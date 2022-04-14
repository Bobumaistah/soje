import 'package:flutter/material.dart';
import 'package:so_je/shared/thame.dart';

class Monitoring extends StatefulWidget {
  const Monitoring({Key? key}) : super(key: key);

  @override
  State<Monitoring> createState() => _MonitoringState();
}

class _MonitoringState extends State<Monitoring> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
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
                'Monitoring',
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

    Widget _buildSwitch() => Transform.scale(
          scale: 1.2,
          child: Switch.adaptive(
            activeColor: Colors.red,
            value: value,
            onChanged: (value) => setState(
              () {
                this.value = value;
              },
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: kYelloColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mesin 01',
                                style: blackStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              _buildSwitch(),
                            ],
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
                                  [
                                    'Proses',
                                    'Suhu',
                                    'Kelembaban',
                                    'Kering\nBasah'
                                  ],
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
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
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
                                      '0 kg',
                                      style: blackStyle.copyWith(),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            '*stop saat sudah 5kg',
                            style: blackStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
