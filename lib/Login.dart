import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

 String email = '';
 String senha = '';

 Widget _frente(){
   return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  //child: Image.network("https://o.remove.bg/downloads/a5b97042-7582-4da8-9017-e1811698ffd8/FINAL_mente-removebg-preview.png"),
                  //width: 200,
                  //height: 200,
                  //child: Image.asset("assets/images/8.png"),
                ),               
               
                Card(
                   child: TextField(
                  onChanged: (text){
                  email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Email", border:  OutlineInputBorder()),
                ),), //email
                
                Card(
                   child: TextField(

                  onChanged: (text){
                  senha = text;
                  },                  
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(labelText: "informe uma senha", border:  OutlineInputBorder()),
                ),), // senha
             
                
                ElevatedButton(
                  onPressed: (){
                    if(email != "" && senha != '' ){
                      print("Entrando $senha");
                      print("Alterando $senha");
                         Navigator.of(context).pushNamed('/home');
                    }
                    else{
                      print("falta de dados");
                    }                    

                },          
                child: Text('Entrar')),
                
                ElevatedButton(onPressed: (){
                 Navigator.of(context).pushReplacementNamed('/cad');
                }, child: Text('Criar conta')),

                ElevatedButton(onPressed: (){
                 Navigator.of(context).pushReplacementNamed('/altera');
                }, child: Text('Esqueceu a senha ?')),
         ], 
         ),
        ),
       ); 
 }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
         children: [ 
           SizedBox(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
                  //child: Image.network("https://o.remove.bg/downloads/a5b97042-7582-4da8-9017-e1811698ffd8/FINAL_mente-removebg-preview.png"),
                   child: Image.asset("assets/images/11.png", fit: BoxFit.fill,),
                ), 
         _frente(),
        ],
      ),        
    ); 
  }
}