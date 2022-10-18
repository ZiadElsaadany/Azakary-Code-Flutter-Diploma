import 'package:flutter/material.dart';

class AzkarDetailsScreen extends StatefulWidget {
   AzkarDetailsScreen(
       {Key? key,
       required this.azkarsText,
         required this.azkarsCounter
       }) : super(key: key);
List<String> azkarsText ;
List<int>   azkarsCounter;

  @override
  State<AzkarDetailsScreen> createState() => _AzkarDetailsScreenState();
}

class _AzkarDetailsScreenState extends State<AzkarDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
          itemBuilder: (context, index){
            return  Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black)
                  ),
                  child: Text(
                    '${widget.azkarsText[index]}'
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    if( widget.azkarsCounter[index]>  0) {  // 0
                      widget.azkarsCounter[index] -- ;
                    }
                    setState(() {});
                  },
                  //   [-
                  //   ,3,3,3,3]
                  //               0
                  // widget.azkarsCounter[index] = 1       0
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                        horizontal: 40,
                    vertical: 10),
                    padding:
                    EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:widget.azkarsCounter[index] ==0 ?  Colors.green:   Colors.black,
                    ),
                    child: Text(
                        '${widget.azkarsCounter[index]}',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  ),
                ),
              ],
            );
          },
         itemCount:widget.azkarsText.length ,
      ) ,
    );
  }
}
