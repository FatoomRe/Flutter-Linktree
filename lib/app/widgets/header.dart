import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/header-background.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              SizedBox(
                height: 127,
                width: 127,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color(0xff4361EE),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: ClipOval(
                      child: Image.asset('assets/de.jpg'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Fatimah Alabbas',
                style: GoogleFonts.montserrat(
                  color: const Color(0xffEBE9E9),
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Flutter Developer | UI/UX Designer',
                style: GoogleFonts.montserrat(
                  color: const Color(0xffEBE9E9),
                  fontSize: 18,
                ),
              ),
               Text(
                'Robotics Enthusiast',
                style: GoogleFonts.montserrat(
                  color: const Color(0xffEBE9E9),
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}