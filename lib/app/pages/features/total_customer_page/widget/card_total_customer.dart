import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTotalCustomer extends StatelessWidget {
  const CardTotalCustomer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade400,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'BawwazBagus',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Divider(color: Colors.grey.shade300, thickness: 1),
        SizedBox(height: 2),
        Text(
          'Email',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 2),
        Text(
          'bawwaz@gmail.com',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Color(0xff8A8A8A),
            fontSize: 13,
          ),
        ),
        Divider(color: Colors.grey.shade300, thickness: 1),
        SizedBox(height: 2),
        Text(
          'No.Telepon',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 2),
        Text(
          '0825376256327',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Color(0xff8A8A8A),
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
