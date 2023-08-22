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
              child: LottieBuilder.asset("lottie/babycare2.json",repeat: false,height: 150,),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
                child: Text("Payment Sucessful",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Thank you for choosing BabyCare",
                    style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),),
                  Text("to accompany you on this incredible",
                    style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),),
                  Text("adventure of parenthood.",
                    style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),),
                  Text("We're committed to making this",
                    style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),),
                  Text("journey as smooth and joyful as",
                    style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),),
                  Text("possible for you and your",
                    style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),),
                  Text("precious one.",
                    style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff7e2cee),
                    ),
                    child: Center(child: Text("Back to Home",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffcbd5e1)),)),
                  ),
                ),
              )

            ],
          ),


        ],
      ),
    );
  }
}