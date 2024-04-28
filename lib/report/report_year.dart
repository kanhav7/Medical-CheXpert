import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/report/report_view.dart';
import 'package:medical_chexpert/report/report_list.dart';
import 'package:medical_chexpert/constants.dart';

/// Flutter code sample for [Slider].

void main() => runApp(const ReportApp());

class ReportApp extends StatelessWidget {
  const ReportApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFF0448b4)),
        useMaterial3: true,
      ),
      home: const ReportYearPage(),
    );
  }
}

class ReportYearPage extends StatefulWidget {
  const ReportYearPage({Key? key}) : super(key: key);

  @override
  _ReportYearPageState createState() => _ReportYearPageState();
}

class _ReportYearPageState extends State<ReportYearPage> {
  double _currentSliderValue = 0;
  late int value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('REPORT YEARS'),
          backgroundColor: kLogoDarkBlue,
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFE9EAF6),
                              )
                            ],
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text('2019',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 35,
                                    color: Color(0xFF0448b4),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFE9EAF6),
                              )
                            ],
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text('2020',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 35,
                                    color: Color(0xFF0448b4),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFE9EAF6),
                              )
                            ],
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'reportList');
                              },
                              child: Text('2021',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 35,
                                    color: Color(0xFF0448b4),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFE9EAF6),
                              )
                            ],
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text('2022',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 35,
                                    color: Color(0xFF0448b4),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFE9EAF6),
                              )
                            ],
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text('2023',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 35,
                                    color: Color(0xFF0448b4),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFE9EAF6),
                              )
                            ],
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text('2024',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 35,
                                    color: Color(0xFF0448b4),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}