import 'package:flutter/material.dart';
import 'custom_stateful_textfield.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  backgroundColor:Color(0xff3c4644),
body: Center(
  child:   Column(
  children: [
    SizedBox(
      height: 50,
    ),
    Text('Welcome to whatsApp',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize:30

      ),



    ),
    SizedBox(
      height: 50,
    ),
    CircleAvatar(
      radius: 150, // Image radius
      backgroundImage: AssetImage('assets/photo.jpg'),
    ),
    SizedBox(
      height: 80,
    ),
    Text('Read Our Privacy ,Policy Tap "Agree and Continue" to'
    ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
    Text('accept the Terms of Service.'
      ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
    SizedBox(
      height: 20,
    ),
    Padding(
      padding: const EdgeInsets.only(left: 32,right: 32),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color:Color(0xff134d42).withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color:Color(0xff134d42),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () {},
          child: Text(
            "Agree And Continue",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey
          ),
          ),

        ),
      ),
    ),
  ],

  ),
),
    );
  }
}
