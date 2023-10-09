import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/registered_or_new%20entry.dart';
import 'package:kachra_app/screens/start_page.dart';

import '../main.dart';
import 'drawer/drawer_final.dart';
// import 'main_fields.dart';

class Handleover extends StatefulWidget {
  const Handleover({super.key});

  @override
  State<Handleover> createState() => _HandleoverState();
}

class _HandleoverState extends State<Handleover> {
  bool isTrueSelected = false;
  bool isFalseSelected = false;

  void selectTrue() {
    setState(() {
      isTrueSelected = true;
      isFalseSelected = false;
    });
  }

  void selectFalse() {
    setState(() {
      isTrueSelected = false;
      isFalseSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController();
    return GestureDetector(
      onTap: () {
        if (!FocusScope.of(context).hasPrimaryFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        drawer: MyDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
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
                            icon:
                                Icon(Icons.menu, color: Colors.black, size: 35),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .15,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Stack(
                    children: [
                      Container(
                        // height: 400,
                        width: 290,
                        decoration: BoxDecoration(
                            color: isTrueSelected
                                ? Color.fromARGB(225, 229, 224, 223)
                                : Colors.white,
                            borderRadius: BorderRadiusDirectional.only(
                                bottomStart: Radius.circular(13),
                                bottomEnd: Radius.circular(13),
                                topEnd: Radius.circular(13),
                                topStart: Radius.circular(13))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Column(
                            children: [
                              Container(
                                height: 121,
                                width: 290,
                                decoration: BoxDecoration(
                                    color: app_color,
                                    borderRadius: BorderRadiusDirectional.only(
                                        bottomStart: Radius.circular(13),
                                        bottomEnd: Radius.circular(50),
                                        topEnd: Radius.circular(13),
                                        topStart: Radius.circular(13))),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text('Handed Over?',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                              fontSize: 13)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(
                                            onTap: selectTrue,
                                            child: Container(
                                              height: 32,
                                              width: 64,
                                              decoration: BoxDecoration(
                                                color: isTrueSelected
                                                    ? Color.fromARGB(
                                                        225, 160, 213, 12)
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(13),
                                              ),
                                              child: Icon(
                                                Icons.check_circle_outline,
                                                color: isTrueSelected
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: selectFalse,
                                            child: Container(
                                              height: 32,
                                              width: 64,
                                              decoration: BoxDecoration(
                                                color: isFalseSelected
                                                    ? Colors.white
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(13),
                                              ),
                                              child: Icon(
                                                Icons.do_not_disturb_alt,
                                                color: isFalseSelected
                                                    ? Colors.black
                                                    : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              if (isTrueSelected == true)
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 36, 0, 0),
                                      child: Container(
                                        height: 40,
                                        width: 258,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                          color: app_color,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      31, 0, 0, 0),
                                              child: Text(
                                                'Quality',
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                    fontSize: 13),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 8, 0),
                                              child: Container(
                                                height: 40,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                      hintStyle: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Colors.grey
                                                                  .shade300,
                                                              fontSize: 13),
                                                    ),
                                                    cursorColor: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 24, 0, 24),
                                      child: Container(
                                        height: 40,
                                        width: 258,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                          color: app_color,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      31, 0, 0, 0),
                                              child: Text(
                                                'Quantity',
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                    fontSize: 13),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 8, 0),
                                              child: Container(
                                                height: 40,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                      hintStyle: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Colors.grey
                                                                  .shade300,
                                                              fontSize: 13),
                                                    ),
                                                    cursorColor: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 258,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: app_color,
                                                borderRadius:
                                                    BorderRadius.circular(13)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      31, 0, 0, 0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Report',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Colors.white,
                                                            fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Eg : Events,functions,etc...',
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder:
                                                    InputBorder.none,
                                                hintStyle:
                                                    GoogleFonts.montserrat(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors
                                                            .grey.shade300,
                                                        fontSize: 13),
                                              ),
                                              cursorColor: Colors.black,
                                              maxLines:
                                                  null, // Allow text to wrap to the next line
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: isTrueSelected
                      ? MediaQuery.of(context).size.height * .09
                      : MediaQuery.of(context).size.height * .5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegPage(),
                        ));
                  },
                  child: Image(
                      width: 40, image: AssetImage('asset/image/arrow.png')),
                ),
                Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    // child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       IconButton(
                    //           onPressed: () {},
                    //           icon: Icon(Icons.arrow_back_ios)),
                    //       IconButton(
                    //           onPressed: () {},
                    //           icon: Icon(Icons.arrow_forward_ios))
                    //     ]),
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
