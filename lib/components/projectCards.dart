import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCards extends StatelessWidget {
  const ProjectCards({
    Key key,
    @required this.pWidth,
    @required this.title,
    @required this.subtitle,
  }) : super(key: key);

  final double pWidth;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Color.fromRGBO(255, 97, 84, 0.8),
      elevation: 20,
      child: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: pWidth * 0.05),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: GoogleFonts.novaSquare(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 97, 84, 0.8),
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.novaSquare(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
