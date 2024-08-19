import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    final heightDevice = MediaQuery.of(context).size.height;
    var emailid = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Container(
              height: heightDevice * 0.70,
              width: widthDevice * 0.80,
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/sierra_logo.png',
                    height: 200.0,
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                  TextFormField(
                    controller: emailid,
                    decoration: const InputDecoration(
                        hintText: 'Email', icon: Icon(Icons.person)),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed('/');
                      },
                      child: const Text('Sign Up'))
                ],
              ),
            ),
          )),
    );
  }
}
