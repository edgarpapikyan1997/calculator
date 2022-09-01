import 'package:flutter/material.dart';

class BottonWidget extends StatelessWidget {
  final onTap;
  Color? bgColor;
  Color? txColor;
  String? bottonText;


  BottonWidget.blueGrey1({Key? key, this.onTap,
    this.bottonText}){
    txColor = Colors.white;
    bgColor = Colors.blueGrey[900];
  }
  BottonWidget.blueGrey2({Key? key, this.onTap,
   this.bottonText,this.txColor, this.bgColor});

  @override
    Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color:bgColor,
        child: Center(
            child: Text(bottonText!,style:
            TextStyle(fontSize: 35,color: txColor),)),
      ),
    );
  }
}
