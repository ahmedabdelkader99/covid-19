import 'package:covid/future.dart';
import 'package:flutter/material.dart';
import 'get_Api/getData.dart';
import 'model_APi/model.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
//
      home: Scaffold(
        backgroundColor: Colors.grey,

        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Covid-Tracker',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: future(),

      )
  )
  );


  }