import 'package:babynama/plans/doctors/doctorscarousel.dart';
import 'package:babynama/plans/utils/QuestionFaq.dart';
import 'package:flutter/material.dart';
import 'package:babynama/plans/CarePlansCards/BasicCareCard.dart';
import 'package:babynama/plans/CarePlansCards/PrimeCareCard.dart';
import 'package:babynama/plans/CarePlansCards/HolisticCareCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:babynama/plans/components/CarouselSlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_line/dotted_line.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

bool click = true;

Widget CardButton(String ButtonName) {
  return Card(
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Container(
      alignment: Alignment.center,
      height: 40,
      width: 120,
      decoration: BoxDecoration(
        color: const Color(0xff2563eb),
        borderRadius: BorderRadius.circular(6),
        // border: Border.all(color: Colors.lightBlue, width :1,)
      ),
      child: Text(
        ButtonName,
        style: GoogleFonts.poppins(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  late MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff1e293b),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.list,
            size: 30,
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
        body: ListView(children: [
          Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "   Your Personal \nPediatrician with \n      Babynama",
                style: GoogleFonts.poppins(
                    color: Color(0xffcbd5e1),
                    height: 1.1,
                    fontSize: size.width * 0.075,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Center(
                  child: Text(
                    "For the parents who want nothing but the best. Secure your peace of mind with round-the-clock Pediatric Support,a Personal Pediatrician, and  comprehensive child and mother care.",
                    style: GoogleFonts.poppins(
                        color: Color(0xff94a3b8),
                        fontSize: size.width * 0.039,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                color: Color(0xff7e2cee),
                height: size.height * 0.08,
                width: size.width * 0.88,
                child: Center(
                    child: Text(
                  "Subscribe & Enjoy Peace of Mind",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: size.width * 0.038,
                      fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Container(
                height: size.height * 0.5,
                width: size.width * 0.88,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("assets/holistic-website.jpg"))),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "How Babynama",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        height: 1.1,
                        fontSize: size.width * 0.075,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Works",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        height: 1.18,
                        fontSize: size.width * 0.075,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: Center(
                  child: Text(
                    "    We curate some of the best \n    pediatricians from all over \nIndia. Many of our doctors are \n   parents themselves, so they \n      can understand parents' \n               concerns better.",
                    style: GoogleFonts.poppins(
                        color: Color(0xff94a3b8),
                        fontSize: size.width * 0.045,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.arrow_circle_down_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                          DottedLine(
                            direction: Axis.vertical,
                            dashLength: 6,
                            lineThickness: 1,
                            lineLength: 200,
                            dashColor: Colors.white,
                          ),
                          Icon(
                            Icons.arrow_circle_down_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                          DottedLine(
                            direction: Axis.vertical,
                            dashLength: 6,
                            lineThickness: 1,
                            lineLength: 200,
                            dashColor: Colors.white,
                          ),
                          Icon(
                            Icons.arrow_circle_down_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                          DottedLine(
                            direction: Axis.vertical,
                            dashLength: 6,
                            lineThickness: 1,
                            lineLength: 200,
                            dashColor: Colors.white,
                          ),
                          Icon(
                            Icons.arrow_circle_down_outlined,
                            size: 40,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Step 1",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: size.width * 0.055,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Join us on WhatsApp to \nconsult with Babynama \ndoctors. It is the most \nconvenient way to connect \nwith pediatricians and other\nspecialists.",
                          style: GoogleFonts.poppins(
                              color: Color(0xff94a3b8),
                              fontSize: size.width * 0.045,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: size.height * 0.058,
                        ),
                        Text(
                          "Step 2",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: size.width * 0.055,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Ask personalized questions \nrelated to your babys's\nhealth at any time to any of \nthe Babynama pediatricians.\nYour query is our responsibilty",
                          style: GoogleFonts.poppins(
                              color: Color(0xff94a3b8),
                              fontSize: size.width * 0.045,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: size.height * 0.094,
                        ),
                        Text(
                          "Step 3",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: size.width * 0.055,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Stay online for a few \nminutes and recieve a\nresponse from the \npediatrician in less that 15 \nminutes.For us, every \nsecond hold importance.",
                          style: GoogleFonts.poppins(
                              color: Color(0xff94a3b8),
                              fontSize: size.width * 0.045,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: size.height * 0.058,
                        ),
                        Text(
                          "Step 4",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: size.width * 0.055,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "If you wish to seek further \nadvice regarding your \nbaby's length, subscribe to \nour care plans to book one-\nto-one consultations and\naccess specialized \n wokshop for free",
                          style: GoogleFonts.poppins(
                              color: Color(0xff94a3b8),
                              fontSize: size.width * 0.045,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.058,
              ),
              Container(
                color: Color(0xff7e2cee),
                height: 50,
                width: 300,
                child: Center(
                    child: Text(
                  "Get Started",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                height: size.height * 0.048,
              ),
              Text("Meet Our Doctors",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: size.width * 0.080,
                    fontWeight: FontWeight.bold,
                  )),
              Text("Best In Buisness",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: size.width * 0.050,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: size.height * 0.02,
              ),
              DoctorsCarousel(),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                "Our Care Plans",
                style: GoogleFonts.poppins(
                    color: Colors.lightBlue[200],
                    fontSize: size.width * 0.090,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card1(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Card2(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Card3(),
            ],
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "Why Babynama?",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: size.width * 0.080,
                  height: 1.0,
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 20.0,left: 5),
          //   child: Center(
          //     child: Text(
          //       "Our team of Trusted Pediatricians \nwill resolve your queries and end-\n             to-end on WhatsApp",

          //       ),
          //     ),
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Our team of Trusted Pediatricians will",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffcbd5e1),
                    fontSize: size.width * 0.039,
                  )),
              Text("resolve your queries and end-to-end on",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffcbd5e1),
                    fontSize: size.width * 0.039,
                  )),
              Text("WhatsApp",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffcbd5e1),
                    fontSize: size.width * 0.039,
                  ))
            ],
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  " Our expert doctors can identify and \naddress 95% of all the body issues \nonline",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: size.width * 0.039,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "90% of the issues being resolved \nthrough chat alone",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: size.width * 0.039,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Avoid unnecessary hospital visits &\npanic situations you face being a \nparent",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: size.width * 0.039,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: size.height*0.2,
              width: size.width*0.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/doctors-group.png")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 60,
              // width: 50,
              decoration: BoxDecoration(
                  color: Color(0xff7e2cee),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                  child: Text(
                "Connect with Expert \nPediatricians Now!",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  " Hear from \nBabynama \n   Parents",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: size.width * 0.090,
                    height: 1.0,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  " We are proud to have helped \n"
                  "        thousands of parents",
                  style: GoogleFonts.poppins(
                      color: Color(0xff94a3b8),
                      fontSize: 20,
                      height: 1.3,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Carousel(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Color(0xff7e2cee),
                  height: 60,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          "View More Testimonials",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: size.width * 0.045,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 25,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                Text(
                  "FAQs for Our\n Care Plans",
                  style: GoogleFonts.mavenPro(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      letterSpacing: .5),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Do you have other questions?",
                  style: GoogleFonts.mavenPro(
                    color: Color(0xff94a3b8),
                    fontSize: 20,
                    height: 1.0,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Question(),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220, bottom: 10),
                  child: Image(
                    image: AssetImage("assets/logo-new.jpeg"),
                    height: 20,
                    width: 1800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10),
                  child: Text(
                    "Babynama is a digital platform with a highly experienced and professional team of doctors tp cater to your baby's problem.",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SERVICES",
                            style: GoogleFonts.mavenPro(
                                color: Colors.orange,
                                fontSize: 16,
                                height: 1.0,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "Preview Acess",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              height: 1,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "One-on-One Paediatric Consultation",

                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              height: 1,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "Baby Solids Intodution",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              height: 1,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "Yoga Workshop",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              height: 1,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "QUICK LINKS",
                            style: GoogleFonts.mavenPro(
                                color: Colors.orange,
                                fontSize: 16,
                                height: 1.0,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "Care Plans",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "Our Doctors",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "Testimonials",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            "About Us",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: size.width*0.3,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Text(
                    "CONTACT US",
                    style: GoogleFonts.mavenPro(
                        color: Colors.orange,
                        fontSize: 16,
                        height: 1.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "contact@gagahealth.com",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Call on:- +91-7948221221",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Chat with an agent Now",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.locationArrow,
                        color: Colors.orange,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "204,Second Floor,Arcade,Block G,\nSouth City 1, Sector 41, \nGurugram, Haryana 122001 ",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Copyright @ 2023 GagaHealth Private \n Limited. All rights reserved.Terms And \nConditions | Privacy Policy | Refund Policy",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0, bottom: 20),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                      size: 40,
                    ),
                    splashColor: Colors.green,
                    elevation: 20,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
