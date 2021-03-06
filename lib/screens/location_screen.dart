import 'package:dartist_app/components/my_button.dart';
import 'package:dartist_app/screens/HireHome.dart';
import 'package:dartist_app/services/firebase_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dartist_app/components/location_data.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import 'category_screen.dart';

class LocationScreen extends StatefulWidget {
  final bool isHirer;

  const LocationScreen({Key key, this.isHirer}) : super(key: key);
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  LocationData ld = LocationData();
  final _cityName = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _cityName.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                controller: _cityName,
                decoration: InputDecoration(hintText: 'Enter The Location'),
              ),
            ),
            FlatButton(
              minWidth: 100.0,
              padding: EdgeInsets.all(8.0),
              color: Color(0xFFB57DFF),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.location_searching,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Current Location",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              onPressed: () async {
                String cityName = await ld.getCurrentlocation();
                setState(() {
                  _cityName.text = cityName;
                });
              },
            ),
            Expanded(
              child: Container(
                decoration:
                    BoxDecoration(image: DecorationImage(image: AssetImage('images/Location.gif'))),
              ),
            ),
            MyButton(
              text: 'Continue..',
              width: 100.0,
              onPressed: () async {
                FirebaseCurrentUser().updateLocation(_cityName.text).then((value){
                  if (widget.isHirer)
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HireHome(),
                        ));
                  else
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ));
                });
              },
            ),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
