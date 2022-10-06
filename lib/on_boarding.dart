import 'package:aqza_flutter/main.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
                child: Image.asset('assets/images/icon_ramen1.jpg')),
            Text("RAMENE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Image.asset('assets/images/Frame6.jpg', height: 245,),
            Text("All your\nfavourite ramen",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24),
            ),
            Text("Delicious as is or tossed with your\nfavourite ingredients",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 17,
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign Up"),
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
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));},
                        child: Text("Login", style: TextStyle(color: Colors.black54)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        )
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
