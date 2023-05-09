import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({Key? key}) : super(key: key);

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  bool isVisable = true;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/head_of_seb7a.png',alignment: Alignment.bottomCenter,),
          Image.asset('assets/images/body_of_sebha.png',),
          // Container(
          //     //alignment: Alignment.topCenter,
          //     child: Image.asset('assets/images/body_of_sebha.png')),
          SizedBox(
            height: 10,
          ),
          Text(
            'عدد التسبيحات',
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                  0xDFB7935F),),
              child:
              Visibility(
                visible: isVisable,
                child: Center(
                  child: Text(
                    '$count',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
          ),
          SizedBox(
            height: 10,
          ),
          FilledButton(
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFB7935F))),
              onPressed: (){
                  setState(() {
                    countTasbeh();
                  });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'سبحان الله',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
          ),
        ],
      ),
    );
  }

  void countTasbeh(){
    count++;
  }
}
