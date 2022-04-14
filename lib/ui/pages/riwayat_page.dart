import 'package:flutter/material.dart';
import 'package:so_je/shared/thame.dart';
import 'package:so_je/ui/widgets/history_card.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _appBar() {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.only(left: 20),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/back_icon.png',
                width: 35,
              ),
              Text(
                'Riwayat',
                style: blackStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 60,
              ),
            ],
          ),
        ),
      );
    }

    Widget _content() => Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: kGreenColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            height: 600,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: kYelloColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: ListView(
              children: const [
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
              ],
            ),
          ),
        );

    return Scaffold(
      backgroundColor: kPrimeColor,
      body: SafeArea(
        child: Column(
          children: [
            _appBar(),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _content(),
            ),
          ],
        ),
      ),
    );
  }
}
