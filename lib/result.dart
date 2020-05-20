import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String imageUrl;

class Result extends StatelessWidget {
  static const id = 'Result';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Signature Image URL",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
                child: Text(
                  imageUrl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(text: imageUrl),
                  );
                  Navigator.pop(context);
                },
                child: Text("Copy to Clipboard"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
