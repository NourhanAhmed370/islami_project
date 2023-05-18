import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({Key? key}) : super(key: key);

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  bool isVisable = true;
  double angle = 0;
  int tasbehCount = 0;
  int count = 0;
  List<String> tasbehat = [
    " سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لا اله الا الله",
    "لا حول ولا قوة بالله",

  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: Image.asset("assets/images/head_of_seb7a.png",
                      width: 73,
                      height: height*0.13,
                      fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                margin: EdgeInsets.only(top: height*0.1),
                  child: Transform.rotate(
                    angle: angle,
                    child:
                     GestureDetector(
                       onTap: (){
                         countTasbeh();
                       },
                       child: Image.asset("assets/images/body_of_sebha.png",
                          fit: BoxFit.fitHeight,
                          width: width*0.7,
                          height: height*0.27,
                        ),
                     ),
                    ),
                  ),
              ],
            ),
          ),
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
                    count.toString(),
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
                countTasbeh();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  tasbehat[tasbehCount],
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
          ),
        ],
      ),
    );
  }

  void countTasbeh(){
    if(count==32){
      count=0;
      if(tasbehCount==4){
        tasbehCount=0;
      }else{
        tasbehCount++;
      }
    }else{
      count++;
    }
    angle+=20;
    setState(() {
    });
  }
}
