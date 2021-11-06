import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu primeiro app"),
        ),
        body: Container(
            color: Colors.purple,
            child: Center(
                child: Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ))),
      ),
    ),
  );
}
