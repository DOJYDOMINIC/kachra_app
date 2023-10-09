import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/start_page.dart';

import 'binrelated_path.dart';
import 'bulkcollection_path.dart';
import 'drawer/drawer_final.dart';
import 'hotspot_cleanig.dart';


class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(Icons.menu, color: Colors.black, size: 35),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Bulkwaste(),));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 8,
                      height: MediaQuery.of(context).size.height * .18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: app_color,
                      ),
                      child: Center(
                        child: Text(
                          'Bulk waste collection',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 38, 0, 38),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Hotspotcleaning(),));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 8,
                        height: MediaQuery.of(context).size.height * .18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: app_color,
                        ),
                        child: Center(
                          child: Text(
                            'Hotspot cleaning',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BinrelatedServices(),));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 8,
                      height: MediaQuery.of(context).size.height * .18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: app_color,
                      ),
                      child: Center(
                        child: Text(
                          'Bin related services',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     IconButton(
                //         onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                //     IconButton(
                //         onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                //   ],
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
