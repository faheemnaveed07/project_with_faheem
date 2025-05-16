import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_clone/utils/constants.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _LoginPageState();
}

class _LoginPageState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  color: myPrimaryColor,
                  letterSpacing: 0.5,
       fontSize: 29,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Please login or sign up to continue using our app",
                style: TextStyle(
                  color: myPrimaryColor,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                width: 250,
                child: Image.asset(
                  "assets/images/pic1.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Enter via Social Network',
                style: TextStyle(
                  color: myPrimaryColor,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue[800],
                    ),
                  ),
          Gap(10),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                  ),
                  Gap(10),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
                  width: 130,

                  decoration: BoxDecoration(
                    color: myPrimaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.white),)))
            ],
          ),
        ),
      ),
    );
  }
}
