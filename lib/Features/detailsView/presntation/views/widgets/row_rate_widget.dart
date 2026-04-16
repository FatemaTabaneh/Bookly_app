import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class row_Rate extends StatelessWidget {
  const row_Rate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.amber, size: 16),
        SizedBox(width: 4),
        Text('4.8', style: TextStyle(fontSize: 20)),
        SizedBox(width: 4),
        Text('(2390)', style: TextStyle(color: Colors.grey, fontSize: 18)),
      ],
    );
  }
}
