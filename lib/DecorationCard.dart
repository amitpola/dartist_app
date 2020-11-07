import 'package:flutter/material.dart';
import 'package:dartist_app/screens/CategoriesScreen.dart';


const kTextStyle=TextStyle(
  color: Color(0xFF7F1CFF),
  fontWeight: FontWeight.bold,
  fontSize: 15,
);

class DecorationCard extends StatelessWidget {

  DecorationCard({
    @required this.onPress,
    @required this.imageToInsert,
    @required this.cardChild,
    @required this.colours,
  });

  final Image imageToInsert;
  final Function onPress;
  final Widget cardChild;
  final Color colours;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/work.png'),
            SizedBox(height: 5,),
            cardChild,
          ],
        )),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,

        ),

      ),
    );
  }
}
