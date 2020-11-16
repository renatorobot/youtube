import 'package:flutter/material.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Inicio.dart';
import 'package:youtube/telas/Inscricao.dart';
import 'package:youtube/telas/Blibioteca.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Bliblioteca()
    ];

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.white,
          title: Image.asset("imagens/youtube.png", width: 98, height: 22,),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
            IconButton(icon: Icon(Icons.search), onPressed: (){}),
            IconButton(icon: Icon(Icons.account_circle), onPressed: (){}),
          ],
          ),
          body: telas[_indiceAtual],

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _indiceAtual,
            onTap: (indice){
              setState(() {
                _indiceAtual  = indice;
              });
            },
            
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.red,

            items: [

              BottomNavigationBarItem(
                title: Text("Início"), icon: Icon(Icons.home)
                ),
              BottomNavigationBarItem(
                title: Text("Em alta"), icon: Icon(Icons.whatshot)
                ),
              BottomNavigationBarItem(
                title: Text("Inscrições"), icon: Icon(Icons.subscriptions)),
              BottomNavigationBarItem(
                title: Text("Bliblioteca"), icon: Icon(Icons.folder)
                ),
              
            ],
          ),
    );
  }
}