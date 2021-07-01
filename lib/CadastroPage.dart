import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'ComEstado.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
 String nome = '';
 String email = '';
 String senha = '';
 String repetsenha = '';

 Widget _frente(){
   return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
           child: Column(
             //mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  width: 200,
                  height: 200,
                  //child: Image.network("https://o.remove.bg/downloads/a5b97042-7582-4da8-9017-e1811698ffd8/FINAL_mente-removebg-preview.png"),
                   //child: Image.asset("assets/images/9.png"),
                ), 
               
              Card(
                   child: TextField(
               onChanged: (text){
                 nome = text;
               },
               keyboardType: TextInputType.name,   
               decoration: InputDecoration(labelText: "nome de usuário", border:  OutlineInputBorder()),
                ), ), //nome
               
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
                    if(nome != "" && email != "" && senha == repetsenha ){
                      print("Cadastrando $senha $repetsenha");
                         Navigator.of(context).pushNamed('/login');             
                    }
                    else{
                      print("falta de dados");
                    }                    

                },          
                child: Text('cadastrar')),

                ElevatedButton(onPressed: (){
                 Navigator.of(context).pushNamed('/login');
                }, child: Text('Voltar')),
                
         ], 
         ),
        ),
       );
 }
 
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Stack (
        children: [ Container(
            width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
                  //child: Image.network("https://o.remove.bg/downloads/a5b97042-7582-4da8-9017-e1811698ffd8/FINAL_mente-removebg-preview.png"),
                   child: Image.asset("assets/images/12.png", fit: BoxFit.fill,),
                ), 
      _frente(),
      ],
      ),      
    ); 
  }
}