import 'package:flutter/material.dart';

class log_in extends StatelessWidget {
  const log_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'second',
      home: Scaffold(

          backgroundColor: Colors.deepPurple[900],
          body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('go back'),

            ),
          )

      ),
    );
  }
}
