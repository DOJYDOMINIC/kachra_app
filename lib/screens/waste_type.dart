import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/drawer/drawer_final.dart';
import 'package:kachra_app/screens/payment_status.dart';

import 'organic_inorganic.dart';

class WasteType extends StatelessWidget {
  const WasteType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 60),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(215, 234, 209, 1),
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 0, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // alignment: Alignment.centerLeft,
                              // color: Colors.red,
                              height: 62,
                              width: 62,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'asset/image/user in waste_page.png'),
                                ),
                              ),
                            ),
                            Text('Divya Prakash',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20)),
                            Text('SHAKTHI VILLA',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(79, 79, 79, 1),
                                    fontWeight: FontWeight.w600)),
                            Text('OPP-GYAN BHARTI SCHOOL N.H 31',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(46, 46, 46, 1),
                                    fontWeight: FontWeight.w600)),
                            Text('DIST - BEGUSARI',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(46, 46, 46, 1),
                                    fontWeight: FontWeight.w600)),
                            Text('\n974727XX88',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(79, 79, 79, 1),
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Handleover(),
                                ));
                          },
                          child: Container(
                            width: 134,
                            height: 121,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(95, 128, 94, 1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'asset/image/organic waste_new.png'),
                                    ),
                                  ),
                                  Text('Organic',
                                      style: GoogleFonts.montserrat(
                                          color:
                                              Color.fromRGBO(239, 239, 239, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                  Text(
                                    'Waste',
                                    style: GoogleFonts.montserrat(
                                        color: Color.fromRGBO(239, 239, 239, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Handleover(),
                                  ));
                            },
                            child: Container(
                              width: 134,
                              height: 121,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(95, 128, 94, 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'asset/image/inorganic waste_new.png'),
                                      ),
                                    ),
                                    Text('Inorganic',
                                        style: GoogleFonts.montserrat(
                                            color: Color.fromRGBO(
                                                239, 239, 239, 1),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                    Text(
                                      'Waste',
                                      style: GoogleFonts.montserrat(
                                          color:
                                              Color.fromRGBO(239, 239, 239, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: ),

                    Row(
                      children: [
                        Container(
                          width: 134,
                          height: 121,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(229, 224, 223, 1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'asset/image/edit_ newn.png'),
                                  ),
                                ),
                                Text('Edit',
                                    style: GoogleFonts.montserrat(
                                        color: Color.fromRGBO(20, 57, 20, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600)),
                                Text(
                                  'Details',
                                  style: GoogleFonts.montserrat(
                                      color: Color.fromRGBO(20, 57, 20, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PayStat(),
                                  ));
                            },
                            child: Container(
                              width: 134,
                              height: 121,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(229, 224, 223, 1),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'asset/image/payment_status.png'),
                                      ),
                                    ),
                                    Text('Payment',
                                        style: GoogleFonts.montserrat(
                                            color:
                                                Color.fromRGBO(20, 57, 20, 1),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                    Text(
                                      'Status',
                                      style: GoogleFonts.montserrat(
                                          color: Color.fromRGBO(20, 57, 20, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
