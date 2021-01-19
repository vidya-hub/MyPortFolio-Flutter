import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({
    Key key,
    @required this.pWidth,
  }) : super(key: key);

  final double pWidth;
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: pWidth * 0.07,
        ),
        Text(
          "VidyaSagar",
          style: GoogleFonts.caveat(fontSize: 40.0),
        ),
        SizedBox(
          width: pWidth * 0.6,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                _launchInBrowser("https://github.com/vidya-hub");
              },
              child: Text(
                "Github",
                style: GoogleFonts.caveat(fontSize: 40.0),
              ),
            ),
            SizedBox(
              width: pWidth * 0.01,
            ),
            GestureDetector(
              onTap: () {
                _launchInBrowser(
                    "https://www.linkedin.com/in/vidya-sagar-129b17130/");
              },
              child: Text(
                "LinkedIn",
                style: GoogleFonts.caveat(
                    fontSize: 40.0, color: Color.fromRGBO(255, 97, 84, 0.8)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
