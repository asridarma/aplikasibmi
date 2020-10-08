import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Profil"),
          centerTitle: true,
        ),
        body:
        MyHomePage(),

      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white30,
        padding: EdgeInsets.only(top:40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Column(
              children:[ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: NetworkImage("https://avatars1.githubusercontent.com/u/62165162?s=460&u=3f463c5625207e9a4f7576a42edcc87c8adecb64&v=4"),
                  width: 150, height: 150,
                ), ),
                Text("I Gede Putu Jaladri Prawata", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    height: 2.0,
                    color: Colors.teal
                ), ),
                Text("https://jaladriprawata.com", style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.blueAccent
                ), ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  padding: EdgeInsets.all(40),
                  width: 400,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"Badung",Icons.gps_fixed),
                          ContainIcon(12,"081238xxxxx",Icons.call),
                        ],),
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"Samsung",Icons.phone_android),
                          ContainIcon(12,"Yahama",Icons.motorcycle),
                        ], ),],  ), ),   ],), ], ));
  }
}

//container dari kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  const ContainIcon(this.atas,this.isi,this.icon);
  @override
  Widget build(BuildContext context) {
    return    Container(
        margin: EdgeInsets.only(left: 20,top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
          border: Border.all(width:3,color:Colors.black54,),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: Colors.cyan,
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top:24),
              width: 125,
              height: 30,
              child:TextBox(isi),
            ),
          ],
        )

    );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(isi,style: TextStyle(
          height: 1.3,
          fontSize: 18,
          color: Colors.white
      ),
      ),
    );
  }
}