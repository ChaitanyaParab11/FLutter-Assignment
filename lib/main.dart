import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      // appBar: AppBar(
      //   title: Text('Dsolve'),
      //   centerTitle: true,
      //   backgroundColor: Colors.deepPurple[900],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 120,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/solve1.png')),
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
                      //border: UnderlineInputBorder(),
                      enabledBorder: const UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue),
                      ),
                      //labelText: 'User Name',
                      //hintText: 'Enter Your User Name',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                      //errorText: 'This is error text'
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
                    //border: UnderlineInputBorder(),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    //labelText: 'Password',
                    //hintText: 'Enter Your Password',
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
                    //border: UnderlineInputBorder(),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    //labelText: 'Password',
                    //hintText: 'Enter Your Password',
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
                  //Navigator.push(
                  //    context, MaterialPageRoute(builder: (_) => HomePage()));
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
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/diamond.png')),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Text('Click'),
      //   backgroundColor: Colors.deepPurple[900],
      // ),
    );
  }
}




