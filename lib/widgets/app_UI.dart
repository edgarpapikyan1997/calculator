import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_calculator/widgets/global.dart';
import 'ready_bottons.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppUI(title: 'Calculator'),
    );
  }
}

class AppUI extends StatefulWidget {
  const AppUI({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<AppUI> createState() => _AppUI();
}

class _AppUI extends State<AppUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  <Widget>[
              Observer(builder: (_) => Container(
                height: 360,
                      color: Colors.blueGrey[90],
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(width: 5, color: Colors.blueGrey[500]!))
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 120, horizontal: 10),
                              alignment: Alignment.centerRight,
                              child: Text(calculator.userInput, style:
                              TextStyle(color: Colors.white,fontSize: 30),)),
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              alignment: Alignment.bottomRight,
                              child: Text(calculator.answer, style:
                              const TextStyle(color: Colors.white,fontSize: 40),)),
                        ],
                      )),
              ),
              Expanded(flex: 2, child:GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: bottons.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                return bottons[index];
    } ),),
        ],
      ),
    );
  }
}
