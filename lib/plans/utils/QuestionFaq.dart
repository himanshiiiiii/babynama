import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  late   bool _customIcon = false;
  bool _onpress=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(

            title: Text("What should I consider before choosing a plan?",style:GoogleFonts.poppins(
         fontSize: 16,
         color: Colors.white,
         fontWeight: FontWeight.w600
    ),
    ),
          trailing: Icon(_customIcon? Icons.horizontal_rule:Icons.add),
          children:  [
            ListTile(
              title: Text("You should consider the age of your baby,"
                  "\nif the baby was pre-term, the type of delivery,and"
                  " whether you're a working \nmom or homemaker.",style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white,
              ),
              ),
            ),
          ],
          onExpansionChanged: (bool expanded){
              // setState()=> _customIcon = expanded;
        },
        ),
        Divider(height: 2,color: Colors.white,indent: 10,endIndent: 10,),
        ExpansionTile(
          title: Text("What is the Basic Plan and who should choose it?",style:GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
          ),
          trailing: Icon(_customIcon? Icons.horizontal_rule:Icons.add),
          children:  [
            ListTile(
              title: Text("The Basic Plan includes WhatsApp chat"
                  "\nwith pediatricians and free 15 minutes \nconsultations with doctor during the day "
                  "\ntime.It is suiyted for parents who are homemaker, had a normal delivery,the baby is pre-term,gaining enough breastmilk, "
                  "\nand a baby has no history of"
                  "\nhospitalization.",style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white,
              ),
              ),
            ),
          ],
          onExpansionChanged: (bool expanded){
            // setState()=> _customIcon = expanded;
          },
        ),
        Divider(height: 2,color: Colors.white,indent: 10,endIndent: 10,),
        ExpansionTile(
          title: Text("What are the pros and cons of the \nBasic Plan?",style:GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
          ),
          trailing: Icon(_customIcon? Icons.horizontal_rule:Icons.add),
          children:  [
            ListTile(
              title: Text("The pros are that it is affordable and gives \nyou accsess to the core of Babynama's "
                  "\nservice,that is, pediatricians on WhatsApp."
                  "\nThe cons  are that you will have to pay \nextra for night peditric and all other \n consultations, like lactation and nutrition"
                  "\nsupport.",style: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.white,
              ),
              ),
            ),
          ],
          onExpansionChanged: (bool expanded){
            // setState()=> _customIcon = expanded;
          },
        ),
        Divider(height: 2,color: Colors.white,indent: 10,endIndent: 10,),
        ExpansionTile(
          title: Text("What is the Prime Plan and who \nshould choose it?",style:GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
          ),
          trailing: Icon(_customIcon? Icons.horizontal_rule:Icons.add),
          children:  [
            ListTile(
              title: Text("The Prime plan includes everything in the \nBasic Plan along with monthly growth \ntracking, free night consultations, and \nlactation and nutrition support for the \nbaby. It is suited for parents who are \nhomemaker, had a normal delivery, but the baby was born pre-term,"
                  "or had a \nhistory of improper growth or \nhospitalization.Also if you are unable to \nproduce enough breast milk or an ensure \nabout the best practices with starting \nsolids for your baby, this plan is for you.",style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white,
              ),
              ),
            ),
          ],
          onExpansionChanged: (bool expanded){
            // setState()=> _customIcon = expanded;
          },
        ),
        Divider(height: 2,color: Colors.white,indent: 10,endIndent: 10,),
        ExpansionTile(
          title: Text("What are the pros and cons of a Prime Plan?",style:GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
          ),
          trailing: Icon(_customIcon? Icons.horizontal_rule:Icons.add),
          children:  [
            ListTile(
              title: Text("The pros are that it is the most value-for-\nmoney plan as you get 24*7 access to \nfree consultation and proper nutrition \ncounseling for breastfeeding and weaning \naid so that your baby is on the right \ngrowth path.Moreover,with free growth \ntracking by a pediatrician every month, \nyou can ensure that any growth related \nred-flags are identified in time. The cons \nare that it does not include gynecology \nand psychologist support, and a \ndedicated pediatrician.",style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white,
              ),
              ),
            ),
          ],
          onExpansionChanged: (bool expanded){
            // setState()=> _customIcon = expanded;
          },
        ),
        Divider(height: 2,color: Colors.white,indent: 10,endIndent: 10,),
        ExpansionTile(
          title: Text("What is the Holistic Plan and who should choose it?",style:GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
          ),
          trailing: Icon(_customIcon? Icons.horizontal_rule:Icons.add),
          children:  [
            ListTile(
              title: Text("The Holistic Plan includes all the services that Babynama has to offer. Along with free access to all our experts and workshops, you will also get a dedicated pediatrician to chat with privately who will know your baby's complete medical history and will proactively created personalized care plans for you and your baby. It os suited for working moms who need to find the right work-life balance,had a c-section delivery, or are facing any psychological challenges that usually accompany childbirth.",style: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.white,
              ),
              ),
            ),
          ],
          onExpansionChanged: (bool expanded){
            // setState()=> _customIcon = expanded;
          },
        ),
        Divider(height: 2,color: Colors.white,indent: 10,endIndent: 10,),
        ExpansionTile(
          title: Text("What are the pros and cons of the Holistic Plan?",style:GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600
          ),
          ),
          trailing: Icon(_customIcon? Icons.horizontal_rule:Icons.add),
          children:  [
            ListTile(
              title: Text("The pros are that if you have you privacy and want access to private chat with doctors, them this plan is for you. With access to psychologist and gynecologist, we want to ensure that you are mentally and physically ready for the challenges of motherhood. Healthy moms raise heathy babies. The cons are none, really. Price isn't a con, it is just the fare amount we need to compensate the doctors for the time and energy they will be dedicating towards you in this plan.",style: GoogleFonts.poppins(
                fontSize: 15,
                color: Colors.white,
              ),
              ),
            ),
          ],
          onExpansionChanged: (bool expanded){
            // setState()=> _customIcon = expanded;
          },
        ),
        Divider(height: 2,color: Colors.white,indent: 10,endIndent: 10,),
      ],
    );
  }
}
