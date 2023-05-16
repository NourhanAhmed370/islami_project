import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/hadeth_details/hadeth_content.dart';
import 'package:untitled2/home/hadeth/hadeth_name.dart';
import 'package:untitled2/sura_details/verse_content.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth-details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreen();
}

class _HadethDetailsScreen extends State<HadethDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  elevation: 24,
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Text(args.content,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),),
                  )
              ),
              ),
            ],
          ),
        ));
  }
}

// object->SuraDetailsArgs()
class HadethDetailsScreenArgs {
  // data class
  String title;
  int index;

  HadethDetailsScreenArgs(this.title, this.index);
}