import 'package:flutter/material.dart';

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
           title: const Text('Welcome To The App'),
           backgroundColor: Colors.yellow,
         ),
         body: me()
       )
     );
   }
}

class me extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, rowNum){
        return Column(
          children: [
            Image.asset('20220107_103251.jpg'),
            Text("Picture $rowNum",style: TextStyle(fontSize: 30, color: Colors.blue),)
          ],
        );
      },
    );
  }
}

