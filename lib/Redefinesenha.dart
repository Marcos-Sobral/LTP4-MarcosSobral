import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Redefinesenha extends StatefulWidget {
  @override
  _RedefinesenhaState createState() => _RedefinesenhaState();
}

class _RedefinesenhaState extends State<Redefinesenha> {
 String senha = '';
 String repetsenha = '';
 
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  width: 200,
                  height: 200,
                  //child: Image.network("https://o.remove.bg/downloads/a5b97042-7582-4da8-9017-e1811698ffd8/FINAL_mente-removebg-preview.png"),
                  child: Image.asset("assets/images/8.png"),
                ), 
               
                Card(
                   child: TextField(

                  onChanged: (text){
                  senha = text;
                  },                  
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "crie uma senha", border:  OutlineInputBorder()),
                ),), // senha
               
                Card(
                   child: TextField(

                  onChanged: (text){
                  repetsenha = text;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Repita a senha", border:  OutlineInputBorder()),
                ),), // senha
                
                ElevatedButton(
                  onPressed: (){
                    if( senha == repetsenha ){
                      print("Alterando $senha $repetsenha");
                         Navigator.of(context).pushNamed('/login');
                        
                    }
                    else{
                      print("tente novamente");
                    }                    

                },          
                child: Text('Alterar')),
                
                ElevatedButton(onPressed: (){
                 Navigator.of(context).pushNamed('/login');
                }, child: Text('Voltar')),
         ], 
         ),
        ),
       ),    
    ); 
  }
}