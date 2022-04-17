import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ExplainPage()
    )
);


class ExplainPage extends StatelessWidget {
  const ExplainPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.tealAccent,
        child: Container(
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                height: 500,
                width: double.infinity,
                child: Lottie.asset('assets/lottiefile.json'),
              ),
              Container(
                child: Text('Vous vous demandez ce qu\u0027est le parrainage ?',
                    style: TextStyle(color: Colors.black,
                        fontSize: 70,
                        fontWeight: FontWeight.bold)),
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                color: Colors.blueGrey,
                onPressed: (){
                  Navigator.pushNamed(context, '3');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExplainPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Container(
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                height: 500,
                width: double.infinity,
                child: Lottie.asset('assets/study.json'),
              ),
              Container(
                child: Center(
                  child: Text('C\u0027est simple. Vous serez sous la responsabilité d\u0027un aîné académique du niveau 2. Il vous aidera tout au long de l\u0027année.', style: TextStyle(color: Colors.black, fontSize: 70, fontWeight: FontWeight.bold)),
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                color: Colors.red[200],
                onPressed: (){
                  Navigator.pushNamed(context, '1');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
