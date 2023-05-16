import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/home/hadeth/hadeth_name.dart';
import 'package:untitled2/home/hadeth/hadeth_title.dart';

import '../quran/verse_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if(allHadethList.isEmpty)
      readHadeth();
      return Column(
        children: [
          Image.asset('assets/images/hadeth_icon.png'),
          Container(
            width: double.infinity,
            height: 2,
            color: Theme.of(context).primaryColor,
            margin: EdgeInsets.only(bottom: 4),
          ),
          Text(
            'Hadeth Number',
            style: TextStyle(fontSize: 24),
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: Theme.of(context).primaryColor,
            margin: EdgeInsets.only(top: 4),
          ),
          Expanded(
            child:allHadethList.isEmpty?
            Center(child: CircularProgressIndicator(),):
            ListView.separated(
              itemBuilder: (buildContext, index) {
                return HadethTitleWidget(allHadethList[index]);
              },
              itemCount: allHadethList.length,
              separatorBuilder: (buildContext, index) {
                return Container(
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                );
              },
            ),
          )
        ],
    );
  }

  void readHadeth() async{
    List<Hadeth> hadethList = [];
    String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> splitedContent = fileContent.split("#");
    for(int i =0;i<splitedContent.length;i++){
      String singleHadethContent = splitedContent[i];
      List<String> lines = singleHadethContent.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
    }
    await Future.delayed(Duration(seconds: 4));
    allHadethList = hadethList;
    setState(() {
    });
  }
}