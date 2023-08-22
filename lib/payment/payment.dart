import 'package:babynama/plans/utils/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff1e293b),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back_ios,

        ),
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 150.0),
          child: SizedBox(
              height: size.height * 0.08,
              width: size.width * 0.32,
              child: Image.asset(
                'assets/logo-new.jpeg',
              )),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:15.0),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/Screenshot (25).png"),

            ),
          ),
          Center(
            child: Container(
              child: LottieBuilder.asset("lottie/babycare2.json",repeat: false,),
            ),
          ),
          Column(
            children: [
              Text("Payment Sucessful",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("   Thank you for choosing BabyCare \nto accompany you on this incredible \n        adventure of parenthood. \n   We're committed to making this \n  journey as smooth and joyful as \n        possible for you and your \n                   precious one.",
                  style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff7e2cee),
                  ),
                  child: Center(child: Text("Back to Home",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),)),
                ),
              )

            ],
          ),
          SizedBox(height: 50,)

        ],
      ),
    );
  }
}