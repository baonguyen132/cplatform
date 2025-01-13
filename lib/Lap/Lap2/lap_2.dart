import 'package:cplatform/Lap/Lap2/user_input.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// Vao main sua home: Lap2()

class Lap2 extends StatefulWidget {
  const Lap2({super.key});

  @override
  State<Lap2> createState() => _Lap2State();
}

class _Lap2State extends State<Lap2> {

  final TextEditingController _phoneController = TextEditingController() ;
  final TextEditingController _mailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 28, 165, 134),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("images/avata.png"),
            ),
            // Text(
            //   "바오 응웬",
            //   style: GoogleFonts.notoSansKr(
            //     textStyle: TextStyle(
            //       color: Colors.white,
            //       letterSpacing: .5,
            //       fontSize: 50,
            //       fontWeight: FontWeight.bold
            //     )
            //   ),
            // ),

            Text(
              "바오 응웬",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontSize: 50,
                  fontWeight: FontWeight.bold
              )
            ),

            // Text(
            //   "FLUTTER DEVELOPER",
            //   style: GoogleFonts.openSans(
            //     textStyle: TextStyle(
            //       letterSpacing: 1,
            //       fontSize: 30,
            //       color: Colors.white
            //     )
            //   ),
            // ),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 30,
                  color: Colors.white
              )
            ),

            UserInput(textEditingController: _phoneController, icon: Icons.phone, hintText: "ENTER PHONE"),
            UserInput(textEditingController: _mailController, icon: Icons.mail, hintText: "ENTER MAIL"),

          ],
        ),
      ),
      
    );
  }
}
