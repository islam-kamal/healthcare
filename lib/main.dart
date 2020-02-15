import 'package:flutter/material.dart';
import 'View/Home.dart';
import 'View/LoginPage.dart';
import 'View/RegisterPage.dart';

void main(){
  runApp(
    new MaterialApp(
      title:'HelathCare',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    )
  );
}