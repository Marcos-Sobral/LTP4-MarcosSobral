
import 'package:app01/CadastroPage.dart';
import 'package:app01/Login.dart';
import 'package:app01/Redefinesenha.dart';
import 'package:app01/tema.dart';
import 'package:flutter/material.dart';
import 'tema.dart';
import 'ComEstado.dart';

class AppSemEstado extends StatelessWidget{
  //static const _dbapp = "https://dbapp-b792b-default-rtdb.firebaseio.com/";
  final String msg;
  const AppSemEstado({Key key, this.msg}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Tema.intance,
       builder: (context, child)
    {
        return MaterialApp(
        home: Login(), 
        theme: ThemeData(
         brightness: Tema.intance.isThemeDark
         ? Brightness.dark
         : Brightness.light,
       ),
       initialRoute: '/',
       routes: {
      '/home': (context)=> ComEstado(),
      '/cad': (context)=> CadastroPage(),
      '/login': (context)=> Login(),  
      '/altera': (context)=> Redefinesenha(),
      //'/listuser': (context)=> UserList(),
       },
      );
    });
    }
      
  }
