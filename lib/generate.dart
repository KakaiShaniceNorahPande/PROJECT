import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const StuAtt());
}

class StuAtt extends StatelessWidget {
  const StuAtt({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STuAtt',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SCAN QR CODE')
        ),
       body:(
          QrImage(
            data: 'CSC2022 CSC1202 1'
                'CSC2022 CSC1202 1',
            version: QrVersions.auto,
            size: (320),
            gapless: false,
            errorStateBuilder: (cxt, err) {
              return Container(
                child: const Center(
                  child: Text(
                    'Something Went Wrong',
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
          )
        ),
      ),
    );
  }
}


