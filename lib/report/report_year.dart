import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_chexpert/report/report_view.dart';
import 'package:medical_chexpert/report/report_list.dart';
import 'package:medical_chexpert/constants.dart';

/// Flutter code sample for [Slider].

// void main() => runApp(const ReportApp());
//
// class ReportApp extends StatelessWidget {
//   const ReportApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch()
//             .copyWith(secondary: const Color(0xFF0448b4)),
//         useMaterial3: true,
//       ),
//       home: const ReportYearPage(),
//     );
//   }
// }

class ReportYearPage extends StatefulWidget {
  const ReportYearPage({super.key});

  @override
  State<ReportYearPage> createState() => _ReportYearPageState();
}

class _ReportYearPageState extends State<ReportYearPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Your existing code for the header row remains the same.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.chevronLeft,
                            weight: 50,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Text(
                            'Reports',
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                          FontAwesomeIcons.magnifyingGlass
                      ),
                      onPressed: () {},
                    )
                  ],
                ),

                // Report containers with adjusted layout.
                Row(
                  children: [
                    Expanded(
                      child: ReportContainer(
                        year: '2019',
                      ),
                    ),
                    Expanded(
                      child: ReportContainer(
                        year: '2020',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ReportContainer(
                        year: '2021',
                      ),
                    ),
                    Expanded(
                      child: ReportContainer(
                        year: '2022',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ReportContainer(
                        year: '2023',
                      ),
                    ),
                    Expanded(
                      child: ReportContainer(
                        year: '2024',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ReportContainer extends StatelessWidget {
  ReportContainer({
 required this.year
  });

  String year;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: EdgeInsets.all(15),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'reportList');
          },
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kBackgroundColour),
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  )
              ),
              padding: MaterialStatePropertyAll(EdgeInsets.all(30))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.fileLines,
                color: kLogoLightBlue,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                  year,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: Color(0xFF0448b4),
                      fontWeight: FontWeight.bold
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}