
import 'package:flutter/material.dart';

import 'ComEstado.dart';

class AppSemEstado extends StatelessWidget{
  final String msg;


  const AppSemEstado({Key key, this.msg}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ComEstado(),
      theme: ThemeData(
        primaryColor: Colors.red,

      ),
      );
    }
      
  }
