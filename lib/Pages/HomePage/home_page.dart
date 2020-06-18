import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  Color miColor = Colors.pinkAccent;

  void cambiarColor() {
    setState(() {
      miColor = Colors.lime;
    });
  }

  void presionar() {
    print("Presione el boton");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial de Widgets"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.cyan,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 40,
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.green,
              child: Text("Hola"),
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: miColor,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Text("Boton2"),
                    onPressed: cambiarColor,
                  ),
                  RaisedButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Text("Boton3"),
                    onPressed: cambiarColor,
                  ),
                  RaisedButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Text("Boton1"),
                    onPressed: cambiarColor,
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.yellowAccent,
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 30,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.orange,
                    child: Text("Boton Largooooooooooo"),
                    onPressed: presionar,
                  ),
                  RaisedButton(
                    color: Colors.orange,
                    child: Text("Boton Cortooooooooooo"),
                    onPressed: presionar,
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              color: Colors.brown,
              child: ListView(
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.amber[600],
                    child: Text('Elemento 1'),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.amber[500],
                    child: Text('Elemento 2'),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.amber[100],
                    child: Text('Elemento 3'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
