//ignore_for_file: prefer_const_constructors
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'Messages.dart';
import 'package:intl/intl.dart'; // for date format
import 'package:intl/date_symbol_data_local.dart'; // for other locales

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Help Desk',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0x000f112f)),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    super.initState();
  }

  var now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(42, 1, 52, 100),
      // appBar: AppBar(
      //   title: Text('Help Desk'),
      // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/theme.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(minHeight: 150.0, maxWidth: 800.0),
              height: 150.0,
              width: 400.0,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(15, 17, 47, 0),
                  Color.fromRGBO(41, 191, 206, 1)
                ]),
                image: DecorationImage(
                    image: AssetImage('assets/id.png'),
                    alignment: Alignment.centerRight),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 53.0, right: 200.0),
                    child: Text(
                      'Hey, Sanchit!',
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                      //textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8.0, right: 120.0),
                    child: Text(
                      'Ask the experts any Design related query',
                      style: TextStyle(fontSize: 12.0, color: Colors.white ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Text(
              DateFormat.yMMMMd().format(now),
              style: TextStyle(fontSize: 21.0, color: Colors.white),
            )),
            Expanded(child: MessagesScreen(messages: messages)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Color.fromRGBO(19, 34, 72, 1)),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.attach_file_sharp),
                      color: Colors.white),
                  Expanded(
                      child: TextField(
                    controller: _controller,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Type your query here...',
                        hintStyle: TextStyle(
                            fontSize: 22.0,
                            color: Color.fromRGBO(41, 191, 206, 100)),
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                  )),
                  IconButton(
                      onPressed: () {
                        sendMessage(_controller.text);
                        _controller.clear();
                      },
                      icon: Icon(Icons.send),
                      color: Colors.white)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
    } else {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      DetectIntentResponse response = await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));
      if (response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({'message': message, 'isUserMessage': isUserMessage});
  }
// String getCurrentDate() {
//   var date = DateTime.now().toString();
//
//   var dateParse = DateTime.parse(date);
//
//   var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";
//   return formattedDate.toString();
// }
}
