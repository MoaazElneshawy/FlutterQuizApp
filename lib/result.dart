import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String result;
  final Function restart;

  Result(this.result, this.restart);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          child: Text(
            result,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(height: 10),
        FlatButton(
          textColor: Colors.white,
          color: Colors.lightBlue,
          onPressed: restart,
          child: Text('Restart'),
        )
      ],
    );
  }
}
