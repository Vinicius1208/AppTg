import 'package:flor_e_ser_app/pages/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flor_e_ser_app/layout.dart';
import 'package:flor_e_ser_app/pages/form.dart';
import 'package:flor_e_ser_app/pages/end.dart';

class HomePage extends StatefulWidget {

  static String tag = 'home-page';

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    final content = Center(


      child: Column(
        children: <Widget>[
          Text("Aplicativo voltado a pais e professores que possuam interesse em obter conhecimento sobre autismo",style: TextStyle(fontSize: 22),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizPage()),
                  );
                },
                child: Text('Quiz'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormaPage()),
                  );
                },
                child: Text('Iniciar Quiz'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EndPage()),
                  );
                },
                child: Text('Resultado'),
              )
            ],
          ),

        ],
      ),
    );


    return Layout.getContent(context, content);
  }

}

