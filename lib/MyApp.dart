import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          home: Scaffold(
              backgroundColor: Colors.black26,
              appBar: AppBar(
                title: Text('Aplikasi Informatika 2020'),
                centerTitle: true,
                backgroundColor: Colors.blueGrey,
                leading: Icon (
                  Icons.star,
                  color: Colors.yellow,
                  size: 40,
                ),
              ),
              body: PictApp()
          )
      );
  }
}

class PictApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center (
      child: Image(
        image: NetworkImage('https://i.pinimg.com/originals/08/7f/f0/087ff01e4a5aad5d1b24d957b077548e.jpg'),
      ),
    );
  }
}