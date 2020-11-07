import 'package:flutter/material.dart';
import 'package:dartist_app/DecorationCard.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            children: <Widget>[
              DecorationCard(
                cardChild: Text(
                  'Design',style: kTextStyle,
                ),
              ),
              DecorationCard(
                cardChild: Text(
                  'Cooking',style: kTextStyle,
                ),
              ),
              DecorationCard(
                cardChild: Text('Administrative Work',style: kTextStyle,),
              ),
              DecorationCard(
                cardChild: Text('Management',style: kTextStyle,),
              ),
              DecorationCard(
                cardChild: Text('Driving',style: kTextStyle,),
              ),
              DecorationCard(
                cardChild: Text('Work at IT ',style: kTextStyle,),
              ),
              DecorationCard(
                cardChild: Text('Research',style: kTextStyle,),
              ),
              DecorationCard(
                cardChild: Text('Computer Support',style: kTextStyle,),
              ),
              DecorationCard(
                cardChild: Text('Manual Work',style: kTextStyle,),
              ),
              DecorationCard(
                cardChild: Text('Machine Operation',style: kTextStyle,),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
