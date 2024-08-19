// ignore: file_names
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    var username = TextEditingController();
    String? setusername = '';
    var password = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17.0),
                  color: Colors.white),
              height: screenHeight * 0.70,
              width: screenWidth * 0.80,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/image/sierra_logo.png'),
                    height: 200.0,
                  ),
                  TextFormField(
                    controller: username,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.person), hintText: 'Username'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter proper users name';
                      }
                      return null;
                    },
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                  TextFormField(
                    controller: password,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.remove_red_eye), hintText: 'Password'),
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'plese enter proepr pasword';
                      }
                      return null;
                    },
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          setusername = username.text;
                          print(setusername);
                        });
                        Navigator.of(context).pushNamed('/dashboardScreen',
                            arguments: {"username": "$setusername"});
                      },
                      child: const Text('Sign in')),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed('/signUp');
                      },
                      child: const Text(
                        'Goto Signup',
                        style: TextStyle(color: Colors.redAccent),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
