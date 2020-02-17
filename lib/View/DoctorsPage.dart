import 'package:flutter/material.dart';
import 'package:healthcare/Model/SmoothStarRating.dart';

class DoctorsPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _DoctorsPageState();
  }

}
class _DoctorsPageState extends State<DoctorsPage>{
  final doctor_list = [
    ['islam kamal', 'Cardologist Doctor', 'img/doctor1.png'],
    ['Amira Saleem ', 'Urologist Doctor', 'img/doctor2.png'],
    ['hossam saleh', 'Ent Specialist', 'img/doctor3.png'],

  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Doctors',style: TextStyle(fontSize: 18),),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: new Container(
          child: ListView.builder(
            controller: null,
            itemCount: doctor_list.length,
            itemBuilder: _DoctorDtails,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,

          ),
        ),
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
                      backgroundImage: AssetImage(doctor_list[index][2]),

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