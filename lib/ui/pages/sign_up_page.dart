import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:so_je/shared/thame.dart';
import 'package:so_je/ui/widgets/custome_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimeColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 80,
                width: 120,
                margin: const EdgeInsets.only(top: 80),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Selamat datang di Aplikasi\nMonitoring Hardware Pemisah Jerami Padi',
              style: greenStyle.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              'DAFTAR',
              style: blackStyle.copyWith(
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 55,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                hintText: 'MASUKAN EMAIL/NO.HP ANDA',
                hintStyle: GoogleFonts.roboto(
                  fontSize: 14,
                  color: kGreenColor,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                hintText: 'MASUKAN PASSWORD BARU',
                suffixIcon: const Icon(Icons.visibility),
                hintStyle: GoogleFonts.roboto(
                  fontSize: 14,
                  color: kGreenColor,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                hintText: 'KONFIRMASI PASSWORD BARU',
                suffixIcon: const Icon(Icons.visibility),
                hintStyle: GoogleFonts.roboto(
                  fontSize: 14,
                  color: kGreenColor,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Lupa Password ?',
                style: greenStyle.copyWith(),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            CustomeButton(
              title: 'Masuk',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home-page', (route) => false);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah mempunyai akun? ',
                  style: greenStyle.copyWith(),
                ),
                GestureDetector(
                  child: Text(
                    'Login',
                    style: greenStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
