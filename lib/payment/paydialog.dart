import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../payment/payment.dart';
class PayDialog extends StatefulWidget {
  const PayDialog({Key? key}) : super(key: key);

  @override
  State<PayDialog> createState() => _PayDialogState();
}

class _PayDialogState extends State<PayDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
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
    child: Expanded(
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Container(child: Icon(Icons.credit_card),color: Color(0xffcbd5e1),),

    Text("**** **** **** 9865",style: TextStyle(color: Color(0xffcbd5e1)),),
    ],),
    ),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color:Color(0xffcbd5e1),width: 1),
    ),
    ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: Expanded(
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
    Padding(
    padding: EdgeInsets.all(10),
    child: Expanded(
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
    )),
    )
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
    );
  }
}
