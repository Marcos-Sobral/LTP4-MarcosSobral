
import 'package:app01/tema.dart';
import 'package:flutter/material.dart';
import 'tema.dart';
import 'ComEstado.dart';

class AppSemEstado extends StatelessWidget{
  final String msg;


  const AppSemEstado({Key key, this.msg}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Tema.instance,
       builder: (context, child)
    {
        return MaterialApp(
        home: ComEstado(),
        theme: ThemeData(
         brightness: Tema.instance.isThemeDark
         ? Brightness.dark
         : Brightness.light,
       ),
      );
    });
    }
      
  }
