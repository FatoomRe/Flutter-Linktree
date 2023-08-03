import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class SocialButtonsItems extends StatelessWidget {
  const SocialButtonsItems({
    Key? key,
    required this.title,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 50,
        width: 278,
        padding: const EdgeInsets.only(left: 58),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff4361EE),
        ),
        child: Row(
          children: [
            Container(
              height: 29,
              width: 29,
              decoration: BoxDecoration(
                color: const Color(0xffEBE9E9),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color:  const Color(0xff323232).withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Image.asset('assets/$image'),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 18,
                color: const Color(0xffEBE9E9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}