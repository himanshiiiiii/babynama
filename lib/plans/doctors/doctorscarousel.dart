import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
class DoctorsCarousel extends StatefulWidget {
  const DoctorsCarousel({Key? key}) : super(key: key);

  @override
  State<DoctorsCarousel> createState() => _DoctorsCarouselState();
}

class _DoctorsCarouselState extends State<DoctorsCarousel> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return CarouselSlider(
        items: [
          Carousel1( "assets/drAnupriya.jpg","Dr. Anupriya\n        Bajaj","MBBS,Md Paediatrics(AG\n        Nursing Home","4 years of experience,Assam\n Medical College and Hospital\n     Dilbrugarh PGPN,Boston\n                  University"),
          Carousel1("assets/drPuneet.jpg","Dr. Puneet","MD Pediatrics(Safdarjung)","10 years of experience(Fortis\n        Hospital,Kangra)" ),
          Carousel1( "assets/drRajat.jpg","Dr. Rajat \nGoswami","MD Paediatrics(Blossoms Kids \n                   Clinic)","10 years experience,Newborn\n      and Child Specialist"),
          Carousel1("assets/karpagam.jpg","Ms. Karpagam", "Certified Lactation Expert","Helped 1000+ mothers (Mother \n                        of 2)"),
          Carousel1("assets/drChadani.jpg", "Dr.Chandani J.", "OB-GYN(Medilife Hospital", "7 years of experience, NTRHUS"),
          Carousel1("assets/drPriyanka (1).jpg", "Dr. Priyanka\n        Tiwari", "DNB Paediatrics(Jaypee \n       Hospital,Noida","8years experience,VMMC,\n                    Delhi")
        ],
        options: CarouselOptions(
          height:450,

          viewportFraction: 0.8,
          animateToClosest: false,
          pageSnapping: true,
          // autoPlay: true,

          onPageChanged: (index, reason) {
            setState(() {
              print(reason.toString());
              currentIndex = index;
            });
          },
          enlargeCenterPage: false,
        ));
  }

  Widget Carousel1(String img,String t1,String t2,String t3){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Positioned(
            bottom:2,
            child: Container(
              width: 390,
              height: 700,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                   color: Colors.transparent,
                    blurRadius: 60,
                    spreadRadius: 50,
                  )],
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(50),
                    topRight:Radius.circular(50),

                  ),
              ),
            ),
          ),
          Positioned(
            bottom:0,
            child: Container(
              width:280,
              height: 350,
              child: Padding(
                padding: const EdgeInsets.only(top:60.0),
                child: Column(
                  children: [
                    Text(t1,style: GoogleFonts.poppins(
                      color: Color(0xffcbd5e1),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,),),
                    SizedBox(height: 10,),
                    Text(t2,style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize:16,
                      )),
                    SizedBox(height: 20,),
                    Text(t3,style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                     )),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color:Color(0xff0f172a),
                  borderRadius: BorderRadius.circular(50
                  )
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 60,
            child: CircleAvatar(
              radius: 65,

              backgroundColor:  Color(0xff2563eb),
              backgroundImage: AssetImage("$img",),

            ),
          ),
        ],
      ),
    );
  }

}
