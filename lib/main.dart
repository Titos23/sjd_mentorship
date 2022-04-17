import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'explain.dart';
import 'sec.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '1',
      routes: {
        '1': (context) => HomePage(),
        '2': (context) => ExplainPage(),
        '3': (context) => ExplainPage2(),
        '4': (context) => Program(),
      },
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Center(
          child: Text("Programme de parrainage"),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 200,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("13 Septembre 2021")),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Bienvenue à Saint Jérôme Polytechnique",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 65,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                          color: Colors.transparent,
                          child: Container(
                            width: 700,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/bg.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Center(
                              child: Text("Qu'est-ce que le parrainage ?",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 65,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )),
                      onTap: () {
                        Navigator.pushNamed(context, '2');
                      },
                    ),
                    GestureDetector(
                      child: Container(
                          color: Colors.transparent,
                          child: Container(
                            width: 700,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/0.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Center(
                              child: Text("Programme de parrainage",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 65,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )),
                      onTap: () {
                        Navigator.pushNamed(context, '4');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
