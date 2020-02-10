import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  var _listName = 'Doctors';
  final doctor_list = [
    ['islam kamal', '5', 'hew dssdf ifdmnmdf sdkmfdf msd', 'img/doctor1.png'],
    ['omar gaber abdo', '4', 'we are jfdn sdkfdf kdfddf', 'img/doctor2.png'],
    ['hossam saleh', '3', 'you know dsng sdkvgj sdjg', 'img/doctor3.png']
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text('Home'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              disabledColor: Colors.white,
              padding: EdgeInsets.only(right: 10),
              onPressed: null)
        ],
      ),
      body: SafeArea(
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
                                radius: MediaQuery.of(context).size.width / 10,
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
                                radius: MediaQuery.of(context).size.width / 10,
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
                                radius: MediaQuery.of(context).size.width / 10,
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
                  child: new Container(
                    child: ListView.builder(
                      controller: null,
                      itemCount: doctor_list.length,
                      itemBuilder: _DoctorDtails,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: new Drawer(),
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
            padding: EdgeInsets.only(left: 5, right: 5, top: 20),
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
                style: BorderStyle.solid,
              ),
            ),
            child: new ListView(
              children: <Widget>[
                new Row(
                  textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 5, right: 5, top:5),
                      width: MediaQuery.of(context).size.width/2,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            doctor_list[index][0],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            doctor_list[index][1],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              //  fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            doctor_list[index][2],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              //  fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      // will use images  stored in doctor list
                      backgroundImage: AssetImage('img/doctor1.png'),

                      radius: MediaQuery.of(context).size.width/9,
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
