import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_clone/utils/constants.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _LoginPageState();
}

class _LoginPageState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(context),
          centerWidget(context),
          TextSection(context)
        ],
      )
    );
  }
  header(context){
    return Container(
      padding: EdgeInsets.only(top: 42,left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 14,
        children: [
          Text(
            'Login Now',
            style: GoogleFonts.lato(
              textStyle: TextStyle(color: myPrimaryColor, letterSpacing: .5,fontSize: myFontSize,fontWeight: FontWeight.bold),
            ),
          ),
          Text('Please login to continue using our app.',style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
  centerWidget(context){
    return Container(
      alignment: Alignment.center,
      child: Column(
        spacing: 12,
        children: [
          Gap(30),
          Text("Enter via Social Networks",style: TextStyle(fontWeight: FontWeight.bold),),
          Gap(2),
          Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    color: Colors.white70
                  ),
                  child: Card(
                      elevation:10,child: IconButton(onPressed: (){print("Facebook");}, icon: FaIcon(FontAwesomeIcons.facebook),))),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  color: Colors.white70
                ),
                child: Card(
                  elevation: 10,
                    child: IconButton(onPressed: (){print("Twitter");}, icon: FaIcon(FontAwesomeIcons.twitter),)),
              ),
            ],
          ),
          Gap(12),
          Text("or login with \n email",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
  TextSection(context)
  {
    return Column(
      children: [
        Gap(10),
        // Email Field
        Card(
          margin: EdgeInsets.symmetric(horizontal: 12),
          elevation: 4,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white.withOpacity(0.3),
              hintText: "Email Address",
              prefixIcon: Icon(Icons.email),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 20), // Spacing between fields

        // Password Field
        Card(
          margin: EdgeInsets.symmetric(horizontal: 12),
          elevation: 4,
          child: TextField(
            obscureText: true, // Hide password characters
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white.withOpacity(0.3),
              hintText: "Password",
              prefixIcon: Icon(Icons.lock),
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(Icons.visibility_off),
                onPressed: () {}, // Add visibility toggle logic
              ),
            ),
          ),
        ),
      ],
    );

  }
}
