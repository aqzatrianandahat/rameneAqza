import 'package:aqza_flutter/home.dart';
import 'package:flutter/material.dart';
import 'on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: OnBoarding());
    //home: LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(
            left: 0
        ),
                margin: EdgeInsets.only(top: 5, bottom: 15),
                child: IconButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoarding()));},
                    icon: Icon(Icons.arrow_back),
                  iconSize: 20,
                )),
            Text("Welcome Back", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.only(top: 5),
                child: Text("Login to your account", style: TextStyle(fontSize: 14, color: Colors.black54))),
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 8),
                child:
                Text("Email", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                hintText: 'Email'
              ),),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 5),
              child: Text(
                  "Password",
                  style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.bold)
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Password'

              ),),
            ),
            Container(child: Text("Forgot password?", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.amber))),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));},
                      child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    )
                        ),
                )
                ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet? ", style: TextStyle(fontSize: 12, color: Colors.black45)),
                  Text("Sign Up", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.amber))],
              ),
            )
          ],
        ),
      ),
    );
  }
}

