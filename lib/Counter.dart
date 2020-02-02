import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CounterButton(() {
          setState(() {
            count++;
          });
        }),
        CounterText(count),
      ],
    );
  }
}

class CounterText extends StatelessWidget {
  CounterText(this.count);
  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Value: ${count ?? ""}');
  }
}

class CounterButton extends StatelessWidget {
  CounterButton(this.onPressed);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('+'),
      onPressed: onPressed,
    );
  }
}
