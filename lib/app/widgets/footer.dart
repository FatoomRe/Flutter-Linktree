import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(top: 4),
      color: const Color(0xff4361EE),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Created by @FatoomRe™',
            style: GoogleFonts.montserrat(
              color: const Color(0xffEBE9E9),
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 2),
        ],
      ),
    );
  }
} 