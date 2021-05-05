
  import 'package:flutter/material.dart';

class ComEstado extends StatefulWidget{
  @override
  State<ComEstado> createState() {
    return Estado();
    }
  }

class Estado extends State<ComEstado>{
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("O Marcos é Lindo ! "),
         ),
         body:  Container(
          height: 300,
          width: 300,
          color: Colors.green,
          child: Align(
            alignment: Alignment.center,
            child: Container(
            height: 150,
            width: 150,
            color: Colors.orange,
          ),),
   
         ),  
    );
  }
}
