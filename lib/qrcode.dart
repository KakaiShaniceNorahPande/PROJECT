import 'package:flutter/material.dart';

import 'generate.dart' ;

void main() {
  runApp( const sTart());
}

class sTart extends StatelessWidget{
  const sTart({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MY APP',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('StuAtt'),
              backgroundColor: Colors.lightBlue,
            ),
        )
    );
  }
}