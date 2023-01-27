import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../enums/color_constants.dart';

class StatusWidget extends StatelessWidget {
  final String status;
  final String count;
  final Color color;
  const StatusWidget(
      {Key? key,
      required this.count,
      required this.status,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: black.withOpacity(0.25), blurRadius: 5)
            ]),
        child: Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: 10,
              height: 100,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      status,
                      style: GoogleFonts.montserrat(fontSize: 18, color: color),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      count,
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: color,
                          fontWeight: FontWeight.w600),
                    )
                  ]),
            )
          ],
        ));
  }
}
