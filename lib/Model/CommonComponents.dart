import 'package:flutter/material.dart';
import 'package:healthcare/View/DoctorSpeciality.dart';
import 'package:healthcare/View/Home.dart';
import 'package:healthcare/View/LoginPage.dart';
import 'package:healthcare/View/SearchPage.dart';

class CommonComponents {
  static final doctor_list = [
    ['islam kamal', 'Cardologist Doctor', 'img/doctor1.png'],
    ['omar gaber abdo', 'Eye Care Doctor', 'img/doctor2.png'],
    ['hossam saleh', 'Heart Dental', 'img/doctor3.png'],

  ];


  static Widget HeaderTitle(String _pageName) {
    return new Text(_pageName,style: TextStyle(color: Colors.white,fontSize: 20),);
  }
  static Widget HeaderIcon(BuildContext context){
    return new IconButton(
        icon: Icon(Icons.home),
        iconSize: 30,
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute<Null>(builder: (BuildContext context) {
                return new Home();
              }));
        }
    );
  }
  static Widget DrawerMenu(BuildContext context){
      return new Container(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('img/doctor1.png'),
                    radius: MediaQuery
                        .of(context)
                        .size
                        .width /8,
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'username',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            ListTile(
              title: new Text(
                'Profile',
                style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              leading: Icon(
                Icons.person_pin,
                color: Colors.blueAccent,
                size: MediaQuery
                    .of(context)
                    .size
                    .width / 10,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute<Null>(
                    builder: (BuildContext context) {
                      return new Home();
                    }));
              },
            ),
            Divider(color: Colors.black,),
            ListTile(
              title: new Text(
                'Speciality',
                style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              leading: Icon(
                Icons.local_car_wash,
                color: Colors.cyan,
                size: MediaQuery
                    .of(context)
                    .size
                    .width / 10,
              ),
              onTap: (){
                goToSpecialityPage(context);
              },
            ),
            Divider(color: Colors.black,),
            ListTile(
              title: new Text(
                'Appointments',
                style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              leading: Icon(
                Icons.access_time,
                color: Colors.green,
                size: MediaQuery
                    .of(context)
                    .size
                    .width / 10,
              ),
            ),
            Divider(color: Colors.black,),
            ListTile(
              title: new Text(
                'Favourits',
                style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
                size: MediaQuery
                    .of(context)
                    .size
                    .width / 10,
              ),
            ),
            Divider(color: Colors.black,),
            ListTile(
              title: new Text(
                'Settings',
                style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.blueGrey,
                size: MediaQuery
                    .of(context)
                    .size
                    .width / 10,
              ),
            ),
            Divider(color: Colors.black,),
            ListTile(
              title: new Text(
                'Social Sharing',
                style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              leading: Icon(
                Icons.share,
                color: Colors.greenAccent,
                size: MediaQuery
                    .of(context)
                    .size
                    .width / 10,
              ),
            ),
            Divider(color: Colors.black,),
            ListTile(
              title: new Text(
                'LogOut',
                style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.black,
                size: MediaQuery
                    .of(context)
                    .size
                    .width / 10,
              ),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute<Null>(
                    builder: (BuildContext context) {
                      return new LoginPage();
                    }));
              },
            ),
          ],
        ),
      );
    }
  static Widget SearchIcon(BuildContext context){
    return  IconButton(
        icon: Icon(Icons.search),
        disabledColor: Colors.white,
        padding: EdgeInsets.only(right: 10),
        onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute<Null>(builder: (BuildContext context) {
                return new SearchPage();
              }));
        }
        );
  }

 static void goToSpecialityPage(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DoctorSpeciality()),
    );
  }





}