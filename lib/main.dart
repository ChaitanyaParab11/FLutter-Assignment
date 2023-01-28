//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'Messages.dart';
import 'HelpDesk.dart';

void main(){
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: helpdesk(),
    );
  }
}
