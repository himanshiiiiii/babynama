

import 'package:babynama/plans/components/youtube.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:babynama/plans/components/youtube2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:babynama/plans/components/youtube3.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Carousel extends StatefulWidget {

  const Carousel({Key? key}) : super(key: key);

  @override

  State<Carousel> createState() => _CarouselState();

}


class _CarouselState extends State<Carousel> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return CarouselSlider(
        items: [
          Carousel1(Color(0xfffce7f3)!, ),
          Carousel2(Color(0xfffce7f3)!,),
          Carousel3(Color(0xfffce7f3)!,),
        ],
        options: CarouselOptions(
          height:590,
          viewportFraction: 5,
          animateToClosest: false,
          // pageSnapping: false,
          onPageChanged: (index, reason) {
            setState(() {
              print(reason.toString());
              currentIndex = index;
            });
          },
          enlargeCenterPage: false,
        ));
  }

  Widget Carousel1(Color color) {
    var _mediaQuery = MediaQuery.of(context);
    return DottedBorder(
      color: Colors.black,
      strokeWidth: 10,
      dashPattern: [8,6],
      child: Container(
        width: _mediaQuery.size.width*0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Video(id:'tnP6WJNEN24'),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right:180.0),
                    child: FaIcon(FontAwesomeIcons.quoteLeft,size: 40,color:Color(0xffcbd5e1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Please follow the group and take your experience.Than You Babynama family", style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 18,

                    ),),
                  ),
                  Row(
                    children: [
                      Text("|",style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold),),

                      Text("Mr.and \nMrs.\nSharma",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                         SizedBox(width: 30,),
                      Text("Parents of 4\nmonth old \nbaby",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              color: Color(0xfffce7f3),
            )
          ],
        ),
      ),
    );
  }


  Widget Carousel2(Color color) {
    var _mediaQuery = MediaQuery.of(context);
    return DottedBorder(
      color: Colors.black,
      strokeWidth: 10,
      dashPattern: [10,6],
      child: Container(
        width: _mediaQuery.size.width*0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
           Video2(id:'zXkeskVQS7M'),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right:180.0),
                    child: FaIcon(FontAwesomeIcons.quoteLeft,size: 40,color:Color(0xffcbd5e1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("The  Doctors are easily available in a matter of minutes.....it is really worth taking the plan", style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 18,

                    ),),
                  ),
                  Row(
                    children: [
                      Text("|",style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold),),

                      Text("Charu \nChandarana",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 20,),
                      Text("Mother of \n 7month \nold baby",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              color: Color(0xfffce7f3),
            )
          ],
        ),
      ),
    );
  }


Widget Carousel3(Color color) {
  var _mediaQuery = MediaQuery.of(context);
  return DottedBorder(
    color: Colors.black,
    strokeWidth: 10,
    dashPattern: [8,6],

    child: Container(
      width: _mediaQuery.size.width*0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Video3(id:'kDVYQocDXlY'),
          SizedBox(height: 20,),
          Container(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(right:180.0),
                  child: FaIcon(FontAwesomeIcons.quoteLeft,size: 40,color:Color(0xffcbd5e1)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Dr. Sumitra & Babynama have helped me in so many ways....suggest this for all mothers.", style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 18,

                  ),),
                ),
                Row(
                  children: [
                    Text("|",style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold),),

                    Text("Ruchi\nGarg",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 30,),
                    Text("Parents of 7\nmonth old \ntwins  ",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            color: Color(0xfffce7f3),
          )
        ],
      ),
    ),
  );
}
}
