import 'package:flutter/material.dart';
import 'package:healthcare/Model/CommonComponents.dart';
import 'package:healthcare/View/LoginPage.dart';
import 'dart:io';
import 'package:healthcare/Model/ProfileImageCapture/image_picker_handler.dart' ;
import 'package:healthcare/Model/ProfileImageCapture/image_picker_dialog.dart';
class RegisterPage extends StatefulWidget {
  RegisterPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with TickerProviderStateMixin,ImagePickerListener{

  File _image;
  AnimationController _controller;
  ImagePickerHandler imagePicker;
  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    imagePicker=new ImagePickerHandler(this,_controller);
    imagePicker.init();

  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Register',
          style: new TextStyle(
              color: Colors.white,
          ),
        ),
      ),
      body:  SafeArea(
        child: SingleChildScrollView(
          child: new GestureDetector(
            onTap: () => imagePicker.showDialog(context),
            child: Column(
              children: <Widget>[
                new Container(
                  alignment: Alignment.topCenter,
                  child: _image == null
                      ? new Stack(

                    children: <Widget>[
                      new CircleAvatar(
                        radius: 70.0,
                        // backgroundColor: const Color(0xFF778899),
                        backgroundImage: AssetImage('img/profile_photo.png'),
                        child: Padding(
                          padding: EdgeInsets.only(top: 80, left: 55),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage('img/take_photo.png'),
                            radius: 30,
                          ),
                        ),
                      ),
                    ],
                  )
                      : new Container(
                    alignment: Alignment.center,
                    height: 120.0,
                    width: 120.0,
                    decoration: new BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: new DecorationImage(
                        image: new ExactAssetImage(_image.path),
                        fit: BoxFit.cover,
                      ),
                      border:
                      Border.all(color: Colors.black, width: 5.0),
                      borderRadius:
                      new BorderRadius.all(const Radius.circular(80.0)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30,left:10,right: 10),
                  width: MediaQuery.of(context).size.width/1.2,
                  child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                      hintText: 'Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10,left:10,right: 10),
                  width: MediaQuery.of(context).size.width/1.2,
                  child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:10,left:10,right: 10),
                  width: MediaQuery.of(context).size.width/1.2,
                  child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10,left:10,right: 10),
                  width: MediaQuery.of(context).size.width/1.2,
                  child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 40,left:10,right: 10),
                    width: MediaQuery.of(context).size.width/1.5,
                    child: RaisedButton(
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child:new Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20),),
                      color: Colors.blue,
                    ),
                ),
              ],
            ),
          ),
        ),
      ),


    );
  }
  @override
  userImage(File _image) {
    setState(() {
      this._image = _image;
    });
  }

}