import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
List < String >  sebhaText = [
  'سبحان الله' , // index= 0
                // counter = 0-->33

  'الحمدلله' ,   //index = 1

  'الله اكبر' ,  //index= 2

  'لا اله الا الله' , // index= 3
   // index=  4
] ;
/**
 *   counter % 33 = 0
 *
 *
 *
 *
 *
 * */
double angle= 0 ;
int counter  = 0;
int index= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text( 'السبحة',style: TextStyle(fontSize: 40),),
            Image(image: AssetImage('assets/images/sebha.jpg') ,fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width*0.5,
            )
          ],
        ),
        toolbarHeight: MediaQuery.of(context).size.height*0.28,
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column (
        children: [
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: ( ){
              //  index= 0
              // counter = 0
              counter++; // 1 2 3 33
      print (counter);
              if(counter % 33 == 0  ) {
                index++ ;

              }
              //1
              // 4  33   66   99 100
              if(index > 3  ||  counter==100 ){   // index= 0
                index= 0;
                counter = 0;
              }
              // 0

              angle=angle+20;
              setState(() {});
            },
            child: Transform.rotate(
              angle:angle , // 20+20
              child: Image.asset(
                  'assets/images/body_sebha_logo.png' ,
              color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal:
                MediaQuery.of(context).size.width*0.3
            ),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(20),
               color: Colors.black
            ),
            child: Text(
              '${sebhaText[index]}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25
              ),
            ),
          )
        ],
      ),
    );
  }
  //  33  سبحان الله
  //  33  الحمدلله
  //  33  الله اكبر
 //  1لا اله الا الله
}
