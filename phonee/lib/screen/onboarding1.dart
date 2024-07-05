import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 150,right: 30,left: 30),
        child: Column(
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Image.asset("images/img_2.png",height: 70,),
             ],
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/img_3.png",height: 150,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("images/img_4.png",height: 50,),
              ],
            ),
            SizedBox(height: 20,),
            Text("Search Restaurants",
              style: TextStyle(fontSize: 20.0,
                  fontWeight: FontWeight.w600,color:Color(0xffF54749)),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Text("In publishing and graphic design, Lorem ipsum is a\n placeholder text commonly used to demonstrate the\n                 visual form of a document or ",
                style: TextStyle(fontSize: 11.0,
                    fontWeight: FontWeight.bold,color:Color(0xff80869A)),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/img_5.png",height: 10,),
              ],
            ),
            SizedBox(height: 150,),
            Container(
              height: 10,
              width: 170,
              decoration: BoxDecoration(color: Color(0xff232323),borderRadius: BorderRadius.circular(30)),
            )
          ],
        ),
      ),
    );
  }
}
