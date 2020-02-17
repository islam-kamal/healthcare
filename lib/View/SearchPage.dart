import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchTextField = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: new Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('img/background.png'), fit: BoxFit.cover),
        ),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _searchTextField,
                decoration: InputDecoration(
                  hintText: 'Search.....',
                ),
                autocorrect: true,
              ),
            ),
            Row(
              children: <Widget>[
                new Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Doctors',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.black,
                    ),
                  ),
                  flex: 2,
                ),
                new Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Pharmacies',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.black,
                    ),

                  ),
                  flex: 2,
                ),
                new Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Hospitals',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.black,
                    ),
                  ),
                  flex: 2,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
