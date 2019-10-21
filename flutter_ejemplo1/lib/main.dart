import 'package:flutter/material.dart';
import './navegacion.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new SplashScreen(),
        routes: <String, WidgetBuilder>{
          "/Navigation": (BuildContext context) => new ThirdPage(),
        }));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 15, bottom: 16),
                child: Image.asset("imagenes/imah.png"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 200,
                    padding: EdgeInsets.only(right: 6),
                    alignment: Alignment(0.9, 0.0),
                    child: Text(
                      "SOULmet",
                      style: TextStyle(fontSize: 51, fontFamily: "italic"),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 180,
                    padding: EdgeInsets.only(right: 6),
                    alignment: Alignment(0.5, -1),
                    child: Text("find your soul mate with us!"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    child: Text("INICIAR"),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(context).pushNamed("/Navigation");
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: Text(
                      "BIENVENIDO",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
