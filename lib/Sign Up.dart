import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_clone/utils/constants.dart';

void main() {
  runApp(const MaterialApp(
    home: SignUpPage(),
  ));
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;
  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF0FF),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(
              'Sign Up',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: myPrimaryColor),
            ),
            const SizedBox(height: 10),
            const Text(
              'Please Registration with email and sign up\nto continue using our app.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 30),
             Text(
              'Enter via Social Networks',
              style: TextStyle(color: myPrimaryColor, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.facebook, color: Color(0xFF5F5FD1)),
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child:
                  IconButton(onPressed: (){print("Twitter");}, icon: FaIcon(FontAwesomeIcons.twitter))
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'or login with email',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
                suffixIcon: IconButton(
                  icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: _agree,
                  onChanged: (value) {
                    setState(() {
                      _agree = value!;
                    });
                  },
                  activeColor: Color(0xFF5F5FD1),
                ),
                const Text('I agree with privacy policy'),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5F5FD1),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {
                },
                child: const Text('Sign up', style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                text: 'You already have an account? ',
                children: [
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(color: myPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
