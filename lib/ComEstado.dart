
  import 'package:app01/tema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'tema.dart';

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
        title: Text("Principal ! "),
        actions: [
          MeuSwitcher(),
          ],
         ),
         
         
         
         body: 
         Container( 
            
          width:  double.infinity,
          height: double.infinity,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [Text("Contador: $cont"),
           MeuSwitcher(),
           ],
         ),
         ),
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
         setState(() {
           cont++;
         });
       },
        ),
     );  
  }
}

class MeuSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Switch(
            value: Tema.instance.isThemeDark,
            onChanged: (value){
              Tema.instance.changeTheme();
            }, 
         );
  }
}