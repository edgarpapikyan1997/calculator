import 'package:flutter/material.dart';
import 'package:mobx_calculator/widgets/global.dart';
import 'bottons.dart';


var bottons = [
  BottonWidget.blueGrey2(bottonText: "AC",
      onTap: (){calculator.clean();},
      bgColor: Colors.blueGrey[900],
      txColor: Colors.lightBlue[200]),

  BottonWidget.blueGrey2(bottonText: "C",
      onTap: (){calculator.delete();},
      bgColor: Colors.blueGrey[900],
      txColor: Colors.lightBlue[200]),

  BottonWidget.blueGrey2(bottonText: "+/-",
      onTap: (){},
      bgColor: Colors.blueGrey[900],
      txColor: Colors.lightBlue[200]),

  BottonWidget.blueGrey2(bottonText: "/",
      onTap: (){calculator.addUserInput("/");},
      bgColor: Colors.blueGrey[700],
      txColor: Colors.lightBlue[200]),

  BottonWidget.blueGrey1(bottonText: "7",onTap: (){calculator.addUserInput("7");}),
  BottonWidget.blueGrey1(bottonText: "8",onTap: (){calculator.addUserInput("8");}),
  BottonWidget.blueGrey1(bottonText: "9",onTap: (){calculator.addUserInput("9");}),

  BottonWidget.blueGrey2(bottonText: "*",
      onTap: (){calculator.addUserInput("*");},
      bgColor: Colors.blueGrey[700],
      txColor: Colors.lightBlue[200]),

  BottonWidget.blueGrey1(bottonText: "4",onTap: (){calculator.addUserInput("4");}),
  BottonWidget.blueGrey1(bottonText: "5",onTap: (){calculator.addUserInput("5");}),
  BottonWidget.blueGrey1(bottonText: "6",onTap: (){calculator.addUserInput("6");}),

  BottonWidget.blueGrey2(bottonText: "-",
      onTap: (){calculator.addUserInput("-");},
      bgColor: Colors.blueGrey[700],
      txColor: Colors.lightBlue[200]),

  BottonWidget.blueGrey1(bottonText: "1",onTap: (){calculator.addUserInput("1");}),
  BottonWidget.blueGrey1(bottonText: "2",onTap: (){calculator.addUserInput("2");}),
  BottonWidget.blueGrey1(bottonText: "3",onTap: (){calculator.addUserInput("3");}),

  BottonWidget.blueGrey2(bottonText: "+",
      onTap: (){calculator.addUserInput("+");},
      bgColor: Colors.blueGrey[700],
      txColor: Colors.lightBlue[200]),

  BottonWidget.blueGrey2(bottonText: "%",
      onTap: (){calculator.addUserInput("%");},
      bgColor: Colors.blueGrey[900],
      txColor: Colors.lightBlue[200]),

  BottonWidget.blueGrey1(bottonText: "0",onTap: (){calculator.addUserInput("0");}),
  BottonWidget.blueGrey1(bottonText: ",",onTap: (){}),

  BottonWidget.blueGrey2(bottonText: "=",
      onTap: (){calculator.result(); },
      bgColor: Colors.blueGrey[400],
      txColor: Colors.lightBlue[200]),
];
