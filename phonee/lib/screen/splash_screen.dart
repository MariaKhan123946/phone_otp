import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF54749),
      body: Container(
        margin: EdgeInsets.only(top: 300,),
        child: Column(
          children: [
            Center(child: Image.asset("images/img.png",height: 100,),
            ),
            SizedBox(height: 30,),
            Text("Hunny Food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xffFFFFFF)),)

          ],
        ),
      ),
    );
  }
}
