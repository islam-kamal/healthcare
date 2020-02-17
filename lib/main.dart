import 'package:flutter/material.dart';
import 'View/DoctorSpeciality.dart';
import 'View/DoctorsPage.dart';
import 'View/Home.dart';
import 'View/LoginPage.dart';
import 'View/RegisterPage.dart';
import 'View/SearchPage.dart';

void main(){
  runApp(
    new MaterialApp(
      title:'HelathCare',
      home: Home(),
      debugShowCheckedModeBanner: false,
    )
  );
}