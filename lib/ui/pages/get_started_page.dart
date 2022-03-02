import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:so_je/shared/thame.dart';
import 'package:so_je/ui/widgets/custome_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimeColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang di n\nAplikasi Monitoring\nHardware Pemisahn\nJerami Padi.',
                  style: greenStyle.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'So.Je',
                  style: GoogleFonts.reemKufi(fontSize: 50, color: kGreenColor),
                ),
                Text(
                  'apllication',
                  style: GoogleFonts.reemKufi(fontSize: 20, color: kGreenColor),
                ),
              ],
            ),
            CustomeButton(
              title: 'Get Started',
              onPressed: () {
                Navigator.pushNamed(context, '/sign-in');
              },
            )
          ],
        ),
      ),
    );
  }
}
