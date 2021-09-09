import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatelessWidget {

  final String data = "1234560";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Código QR yy"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 16,),

            QrImage(
              data: data,
              gapless: true,
              size: 250,
              //errorCorrectionLevel: QrErrorCorrectLevel.H,

            )
          ],
        ),
      ),
    );
  }
}
