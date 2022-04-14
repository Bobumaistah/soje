import 'package:flutter/material.dart';
import 'package:so_je/shared/thame.dart';

class DetailRiwayat extends StatelessWidget {
  const DetailRiwayat({Key? key}) : super(key: key);

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

    TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
        children: cells
            .map(
              (cell) => Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    cell,
                    style: blackStyle.copyWith(
                      fontWeight:
                          isHeader ? FontWeight.bold : FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
            .toList());

    Widget _content() => Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: kGreenColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            height: 600,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: kYelloColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tanggal (23/04/2021)',
                  style: blackStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Table(
                    border: TableBorder.all(),
                    columnWidths: const {
                      0: FractionColumnWidth(0.2),
                      1: FractionColumnWidth(0.15),
                      2: FractionColumnWidth(0.28),
                      3: FractionColumnWidth(0.22),
                    },
                    children: [
                      buildRow(
                        ['Proses', 'Suhu', 'Kelembaban', 'Kering\nBasah'],
                        isHeader: true,
                      ),
                      buildRow(
                        ['Proses 01', '30C', '30%', 'Kering'],
                      ),
                      buildRow(
                        ['Proses 02', '20C', '80%', 'Basah'],
                      ),
                      buildRow(
                        ['Proses 03', '40C', '30%', 'Kering'],
                      ),
                      buildRow(
                        ['Proses 04', '20C', '80%', 'Kering'],
                      ),
                      buildRow(
                        ['Proses 05', '30C', '90%', 'Kering'],
                      ),
                      buildRow(
                        ['Proses 06', '40C', '20%', 'Kering'],
                      ),
                      buildRow(
                        ['Proses 07', '40C', '20%', 'Kering'],
                      ),
                      buildRow(
                        ['Proses 08', '40C', '20%', 'Kering'],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Total Jerami Kering =',
                      style: blackStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                        color: kGreenColor,
                        borderRadius: BorderRadius.circular(7.5),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: kPrimeColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            '25 kg',
                            style: blackStyle.copyWith(),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
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
