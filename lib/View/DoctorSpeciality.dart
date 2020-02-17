import 'package:flutter/material.dart';

import 'DoctorsPage.dart';

class DoctorSpeciality extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DoctorSpecialityState();
  }

}
class _DoctorSpecialityState extends State<DoctorSpeciality>{

  var speciality_list=[['Cardlologist','5 Doctors','img/Cardlologist.png'],
    ['Orthopedic','3 Doctors','img/Orthopedic.png'],
    ['Dentist','15 Doctors','img/Dentist.png'],
    ['Urologist','7 Doctors','img/Urologist.png'],
    ['Oncologist','8 Doctors','img/Oncologist.png'],
    ['Pediatrician','12 Doctors','img/Pediatrician.png'],
    ['Ent Specialist','3 Doctors','img/Ent_Specialist.png'],
    ['Gynaecologist','3 Doctors','img/Gynaecologist.png']];
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        title: Text('Speciality',style: TextStyle(color: Colors.white,fontSize: 18),),
      ),
      body:   Padding(
        padding: EdgeInsets.all(5.0),
        child: new Container(
          child: ListView.builder(
            controller: null,
            itemCount: speciality_list.length,
            itemBuilder: _DoctorspecialityDtails,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,

          ),
        ),
      ),

    );
  }


  Widget _DoctorspecialityDtails(BuildContext context, int index) {
    return new Card(
      child: InkWell(
        onTap: () {
          // will take your to DoctorsPage which show all doctors who belong to this speciality
          Navigator.of(context).push(
              MaterialPageRoute<Null>(
                  builder: (BuildContext context) {
                    return new DoctorsPage();
                  }));
        },
        child: new Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: new Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(left: 0, right: 0, top: 0),
            height: MediaQuery
                .of(context)
                .size
                .width / 4,
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
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      color: Colors.black,
                      iconSize: 30,
                      padding: EdgeInsets.only(left: 20),
                    ),
                    Container(
                      //  padding: EdgeInsets.only(left: 13, right: 5, top:5),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width /2,
                      child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              speciality_list[index][0],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                              child: Text(
                                speciality_list[index][1],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  //  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                  ],
                ),

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10,left: 15),
                      child: CircleAvatar(// will use images  stored in doctor list
                        backgroundImage: AssetImage(speciality_list[index][2]),
                        radius: MediaQuery
                            .of(context)
                            .size
                            .width /11,
                      ),
                    ),

              ],
            ),
            ]
          ),
        ),
      ),
    ),
    );
  }
}