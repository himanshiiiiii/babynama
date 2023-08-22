import 'package:babynama/payment/payment.dart';

import 'package:flutter/material.dart';
import 'package:babynama/plans/utils/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatefulWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  bool BasicKnowMoreClick = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        elevation: 20,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          // height: (BasicKnowMoreClick == true) ? _mediaQuery.size.height*0.35: _mediaQuery.size.height*0.6,
          width: size.width ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff1e293b),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12,right: 6 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Basic Care",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text("Reliable pediatric care within 15 minutes",
                    style: GoogleFonts.poppins(
                      color: Color(0xffe5e7eb),
                      height: 1.2,
                      fontSize: 14,
                    )),
                Container(
                  child: Row(children: [
                    Container(
                      child: MoreDescription(),
                    ),
                  ]),
                ),
                GestureDetector(
                  onTap: () {

    showDialog(context: context, builder: (BuildContext context)=>Dialog(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    ),
    child: Container(
    height: 400,
    color: Color(0xff0f172a),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Add Payment",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xffcbd5e1)),),
    SizedBox(height: 10,),
    Center(child: Text("Provide your credit card",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),)),
    Center(child: Text("information",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),)),
    SizedBox(height: 10,),
    SizedBox(height: 10,),
    Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Align(alignment: Alignment.topLeft,
    child: Text("Card Number",style: GoogleFonts.poppins(fontSize: 15,color: Color(0xffcbd5e1)),)),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 20,top: 7),
    child: Container(height: 40,
    width: 250,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Container(child: Icon(Icons.credit_card),color: Color(0xffcbd5e1),),

    Text("**** **** **** 9865",style: TextStyle(color: Color(0xffcbd5e1)),),
    ],),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color:Color(0xffcbd5e1),width: 1),
    ),
    ),
    ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Expanded(
    child: Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Container(
      height: 40,
      width:180,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color:Color(0xffcbd5e1),width: 1),

      ),
      child: Center(child: Text("Enter Coupon Code",style: GoogleFonts.poppins(fontSize: 12,color: Color(0xffcbd5e1)))),
      ),
    ),
    ),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 40,
    width:180,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
      color:Color(0xffee6cc0),
    ),
    child: Center(child: Text("Apply",style: GoogleFonts.poppins(fontSize: 16,color: Colors.black),),
    ),
    ),
    ))
    ],),

    Padding(
    padding: const EdgeInsets.only(top:35.0),
    child: GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
      },
      child: Container(
      height: 40,
      width:180,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
        color:Color(0xff00d2ff),
      ),

      child: Center(child: Text("Pay Now",style: GoogleFonts.poppins(fontSize: 16,color: Colors.black),),
      ),
      ),
    ),
    )
    ],
    ),
    ),
    ));
                  },
                  child: Container(
                    height: 40,
                    width: size.width*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff00d2ff),
                    ),
                    child: Center(
                        child: Text(
                      "Buy @ Rs2499 (3 Month)",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                GestureDetector(
                  onTap: () {


    showDialog(context: context, builder: (BuildContext context)=>Dialog(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
    ),
    child: Container(
    height: 400,
    color: Color(0xff0f172a),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Add Payment",style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xffcbd5e1)),),
    SizedBox(height: 10,),
    Center(child: Text("Provide your credit card",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),)),
    Center(child: Text("information",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),)),
    SizedBox(height: 10,),
    SizedBox(height: 10,),
    Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: Align(alignment: Alignment.topLeft,
    child: Text("Card Number",style: GoogleFonts.poppins(fontSize: 15,color: Color(0xffcbd5e1)),)),
    ),
    Container(height: 40,
    width: 250,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Container(child: Icon(Icons.credit_card),color: Color(0xffcbd5e1),),

    Text("**** **** **** 9865",style: TextStyle(color: Color(0xffcbd5e1)),),
    ],),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color:Color(0xffcbd5e1),width: 1),
    ),
    ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Expanded(
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
      height: 40,
      width:180,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color:Color(0xffcbd5e1),width: 1),

      ),
      child: Center(child: Text("Enter Coupon Code",style: GoogleFonts.poppins(fontSize: 12,color: Color(0xffcbd5e1)))),
      ),
    ),
    ),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    height: 40,
    width:180,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
      color:Color(0xffee6cc0),
    ),
    child: Center(child: Text("Apply",style: GoogleFonts.poppins(fontSize: 16,color: Colors.black),),
    ),
    ),
    ))
    ],),

    Padding(
    padding: const EdgeInsets.only(top:35.0),
    child: GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
      },
      child: Container(
      height: 40,
      width:180,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
        color:Color(0xff00d2ff),
      ),

      child: Center(child: Text("Pay Now",style: GoogleFonts.poppins(fontSize: 16,color: Colors.black),),
      ),
      ),
    ),
    )
    ],
    ),
    ),
    ));
                  },
                  child: Container(
                    height: 40,
                    width: size.width*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffee6cc0),
                    ),
                    child: Center(
                        child: Text(
                      "Buy @ Rs999 (1 Month)",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Description(String text) {
    return Container(
      height: 38,
      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 15,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(text,
              style: GoogleFonts.poppins(
                color: Color(0xffe5e7eb),
                height: 1.2,
                fontSize: 14,
              ))
        ],
      ),
    );
  }

  Widget MoreDescription() {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Description(
              "Instant answers on WhatsApp by \nPediatricians(8AM-10PM)"),
          Description("Unlimited free pediatric \nconsultations (8AM-10PM)"),
          Description("Free postpartum yoga classes")
        ],
      ),
    );
  }
}
