import 'package:flutter/material.dart';
import 'package:untitled2/home/hadeth/hadeth_name.dart';

class HadethContent extends StatelessWidget {
  Hadeth hadeth;

  HadethContent(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        hadeth.content,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}