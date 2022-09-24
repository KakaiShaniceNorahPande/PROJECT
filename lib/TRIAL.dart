import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const GenerateQR());
}

class GenerateQR extends StatelessWidget {
  const GenerateQR({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        //Appbar having title
        appBar: AppBar(
        title: Center(child: Text("Attendance QR Code Generator")),
    ),
    body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QrImage(data: 'CSC',
            version: QrVersions.auto,
            size: (200),
            gapless: false,),
          ElevatedButton (onPressed: () {},
            child: const Text("Generate QR Code",style: TextStyle(color: Colors.white,
            ),
            ),
          ),
        ],
      ),
    ),
    ),
    );
  }
}