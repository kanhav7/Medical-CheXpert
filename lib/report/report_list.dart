import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/constants.dart';
import 'report_view.dart';
import 'report_year.dart';

class ReportListPage extends StatefulWidget {
  const ReportListPage({super.key});

  @override
  State<ReportListPage> createState() => _ReportListPageState();
}

class _ReportListPageState extends State<ReportListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('2021 REPORTS'),
        backgroundColor: kLogoDarkBlue,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFd3edff),
                      )
                    ],
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'reportView');
                      },
                      child: Text('2021-DrAbhayAcharya-Report1.pdf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
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
                        color: Color(0xFFd3edff),
                      )
                    ],
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('2021-DrAbhayAcharya-Report2.pdf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
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
                        color: Color(0xFFd3edff),
                      )
                    ],
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('2021-DrRahulSoni-Report3.pdf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
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
                        color: Color(0xFFd3edff),
                      )
                    ],
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('2021-DrRahulSoni-Report4.pdf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
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
                        color: Color(0xFFd3edff),
                      )
                    ],
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('2021-DrRahulSoni-Report5.pdf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
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
                        color: Color(0xFFd3edff),
                      )
                    ],
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('2021-DrRahulKatta-Report6.pdf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
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
                        color: Color(0xFFd3edff),
                      )
                    ],
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('2021-DrAbhayAcharya-Report7.pdf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
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
                        color: Color(0xFFd3edff),
                      )
                    ],
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('2021-DrAbhayAcharya-Report8.pdf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
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
                        color: Color(0xFFd3edff),
                      )
                    ],
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('2021-DrSheershBhagal-Report9.pdf',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xFF0448b4),
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}