import 'package:flutter/material.dart';
import 'package:healthcare/View/RegisterPage.dart';

import 'Home.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }

}

class _LoginPageState extends State<LoginPage>{
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body:  new Container(
        alignment: Alignment.center,
        //padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: new SafeArea(
          child: new SingleChildScrollView(
            child: new Container(
              width: MediaQuery.of(context).size.width/1.2,
              alignment: Alignment.center,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0.0,),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('img/healthcare-logo.png'),
                      maxRadius: 80,
                      minRadius: 20,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0.0,),
                    child: new Container(

                      child: new Column(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          new Container(
                            width: MediaQuery.of(context).size.width/1.5,
                            child: new Column(
                              children: <Widget>[
                                new TextField(
                                    controller: _phoneController,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'اسم المستخدم',
                                      // to add icon from right side
                                      suffixIcon: Padding(
                                          padding: const EdgeInsetsDirectional.only(
                                              start: 0.0),
                                          child: new Icon(
                                            Icons.person,
                                            color: Colors.cyan,
                                          )),
                                      hintStyle: TextStyle(
                                        color: Colors
                                            .black, // make hint text with white color
                                      ),
                                    )),
                                new TextField(
                                  controller: _passwordController,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    suffixIcon: Padding(
                                      padding:
                                      const EdgeInsetsDirectional.only(start: 0.0),
                                      child: new Icon(Icons.lock, color: Colors.cyan),
                                    ),
                                    hintText: 'كلمة المرور',
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                                new Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.all(15.0),
                                  child: new InkWell(
                                    child: new Text(
                                      'نسيت كلمة المرور ؟',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0),
                                    ),
                                    onTap: null,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 0.0,bottom: 10.0),
                            child:
                            new Center(

                              child: new Column(
                                children: <Widget>[
                                  new SizedBox(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: new RaisedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute<Null>(
                                                builder: (BuildContext context) {
                                                  return new Home();
                                                }));
                                      },
                                      child: new Text(
                                        "تسجيل الدخول",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      //use to make circle border for button
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(22.0),
                                        side: BorderSide(
                                          color: Colors.cyan,
                                        ),
                                      ),
                                      color: Colors.cyan,
                                    ),
                                  ),
                                  new FlatButton(
                                    child: new Text("Not Have Account ? , Create New Account"),
                                    textColor: Colors.deepOrange,
                                    onPressed: moveToRegister,
                                  ),
                                  new Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 0.0,),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage('img/facebook.png'),
                                          maxRadius: 30,
                                          minRadius: 20,
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.0,),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage('img/google.png'),
                                          maxRadius: 30,
                                          minRadius: 20,
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.0,),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage('img/twitter.png'),
                                          maxRadius: 30,
                                          minRadius: 20,
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ),
                                    ],
                                  )

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );

  }


  void moveToRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  }
}