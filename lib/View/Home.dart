import 'dart:io';

import 'package:flutter/material.dart';
import 'package:healthcare/Model/CommonComponents.dart';
import 'package:healthcare/Model/SmoothStarRating.dart';
import 'package:healthcare/View/DoctorsPage.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  var _listName = 'Doctors';
  final doctor_list = [
    ['islam kamal', 'Cardologist Doctor', 'img/doctor1.png'],
    ['omar gaber abdo', 'Eye Care Doctor', 'img/doctor2.png'],
    ['hossam saleh', 'Heart Dental', 'img/doctor3.png'],

  ];

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(
        title: CommonComponents.HeaderTitle('Home'),
        actions: <Widget>[
          CommonComponents.SearchIcon(context),
        ],
      ),
      body: WillPopScope(
    onWillPop:()async =>false,
    child: SafeArea(
        child: SingleChildScrollView(
          child: new Container(
            alignment: Alignment.center,
            // contain all widgets in home page
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(
                          child: InkWell(
                            child: new Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: MediaQuery
                                      .of(context)
                                      .size
                                      .width / 10,
                                  backgroundImage:
                                  AssetImage('img/home_doctor.png'),
                                ),
                                new Text(
                                  "Doctors",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onTap: () {
                              setState(() {
                                _listName = 'Doctors';
                              });
                            },
                          ),
                        ),
                        new Expanded(
                          child: InkWell(
                            child: new Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: MediaQuery
                                      .of(context)
                                      .size
                                      .width / 10,
                                  backgroundImage:
                                  AssetImage('img/home_pharmacy.png'),
                                ),
                                new Text(
                                  "Pharmacies",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              setState(() {
                                _listName = 'Pharmacies';
                              });
                            },
                          ),
                        ),
                        new Expanded(
                          child: InkWell(
                            child: new Column(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: MediaQuery
                                      .of(context)
                                      .size
                                      .width / 10,
                                  backgroundImage:
                                  AssetImage('img/home_hospital.png'),
                                ),
                                new Text(
                                  "Hospitals",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              setState(() {
                                _listName = 'Hospitals';
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new Row(
                      children: <Widget>[
                        new Text(
                          '$_listName List',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        //to make space bettween two widget
                        Spacer(),
                        new InkWell(
                          child: Text(
                            'View All',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child:  new Container(
                      child: ListView.builder(
                        controller: null,
                        itemCount: doctor_list.length,
                        itemBuilder: _DoctorDtails,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,

                      ),
                    ),

                  ),
                  // usen to display data which get from firebase
                  /*
              new Container(
                child: FutureBuilder(
                  //  future: doctor_list,
                    builder:
                        (BuildContext context, AsyncSnapshot<List> snapshot) {
                      if (!snapshot.hasData) return new Container();
                      List doctorData = snapshot.data;
                      return new ListView.builder(
                        scrollDirection: Axis.vertical,
                        padding: new EdgeInsets.all(6.0),
                        itemCount: doctorData.length,
                        itemBuilder: _DoctorDtails,
                      );
                    }),
              )

               */
                ]),
          ),
        ),
    ),
      ),


      drawer: new Drawer(
        child: CommonComponents.DrawerMenu(context),
      ),

    );


  }

  Widget _DoctorDtails(BuildContext context, int index) {

    return new Card(
      child: InkWell(
        onTap: () {
          print(doctor_list[1][0]);
        },
        child: new Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: new Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(left: 5, right: 5, top: 5),
            height: MediaQuery
                .of(context)
                .size
                .width / 2.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
                style: BorderStyle.solid,
              ),
            ),
            child: new ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                new Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      //  padding: EdgeInsets.only(left: 13, right: 5, top:5),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 1.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              doctor_list[index][0],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                //use to show rating for doctors , pharmacies, hospitals
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SmoothStarRating(
                                    starCount: 5,
                                    color: Colors.blueAccent,
                                    borderColor: Colors.black,
                                    allowHalfRating: true,
                                    rating:
                                    2,
                                    // detect rate for each doctor and take its value from rating which user do
                                    size: 15,
                                    spacing: 2,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "15 Reviews",
                                    // number of reviews take its value from counter every review user make to doctor
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: 15, right: 5, top: 5),
                              child: Text(
                                doctor_list[index][1],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  //  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            new Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 2,
                              padding: EdgeInsets.only(top: 5),
                              child: new RaisedButton(
                                onPressed: () {
                                  // Navigate to Book Appointment page
                                },
                                child: new Text(
                                  "Book Appointment",
                                  style: TextStyle(color: Colors.black),
                                ),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(12.0),
                                  side:
                                  BorderSide(color: Colors.cyan, width: 2),
                                ),
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CircleAvatar(
                      // will use images  stored in doctor list
                      backgroundImage: AssetImage('img/doctor2.png'),

                      radius: MediaQuery
                          .of(context)
                          .size
                          .width / 9,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
