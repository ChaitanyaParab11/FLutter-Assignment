// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:myflutterapp/log_in.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 120,
                    child: Image.asset('assets/solve1.png')),
          ),
        ),
            Container(
              height: 34,
              width: 194,
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                width: 300.0,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue[100],
                ),
                child: const Text('10 DIGIT MOBILE NUMBER')
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                width: 300.0,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue[100],
                ),
                child: const Text('EMAIL ADDRESS')
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                width: 300.0,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue[100],
                ),
                child: const Text('NAME')
            ),
            Container(
              height: 34,
              width: 194,
              decoration: BoxDecoration(
                  color: Colors.blue[100], borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => log_in()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue[100],
                ),
                child: const Text('By clicking, I accept the Terms & Conditions & Privacy Policy', textAlign: TextAlign.center,)
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Center(
                child: Container(
                    width: 176,
                    height: 130,
                    child: Image.asset('assets/diamond.png')),
              ),
            ),
          ],
        ),
      ),

    );
  }
}




