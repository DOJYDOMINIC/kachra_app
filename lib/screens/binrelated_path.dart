import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/start_page.dart';

import 'drawer/drawer_final.dart';


class BinrelatedServices extends StatelessWidget {
  const BinrelatedServices({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    return GestureDetector(
      onTap: () {
        if (!FocusScope.of(context).hasPrimaryFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        drawer:const MyDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 5,
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
                            const Icon(Icons.menu, color: Colors.black, size: 35),
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
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(225, 229, 224, 223),
                            borderRadius: BorderRadiusDirectional.only(
                                bottomStart: Radius.circular(13),
                                bottomEnd: Radius.circular(13),
                                topEnd: Radius.circular(13),
                                topStart: Radius.circular(13))),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,20),
                          child: Column(
                            children: [
                              Container(
                                height: 73,
                                width: 290,
                                decoration: const BoxDecoration(
                                    color: app_color,
                                    borderRadius: BorderRadiusDirectional.only(
                                        bottomStart: Radius.circular(13),
                                        bottomEnd: Radius.circular(50),
                                        topEnd: Radius.circular(13),
                                        topStart: Radius.circular(13))),
                                child: Center(
                                  child: Text('Bin related services',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 13)),
                                ),
                              ),

                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(0, 16, 0, 16),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 52,
                                    width: 258,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(13)),
                                    child: Center(
                                      child: Text('Repairing & Maintenance',style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 13)
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(0, 16, 0, 16),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 52,
                                    width: 258,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(13)),
                                    child: Center(
                                      child: Text('Application for new bin',style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                          fontSize: 13)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Padding(
                              //   padding:
                              //   const EdgeInsets.fromLTRB(0, 16, 0, 16),
                              //   child: GestureDetector(
                              //     onTap: () {},
                              //     child: Container(
                              //       height: 52,
                              //       width: 258,
                              //       decoration: BoxDecoration(
                              //           color: Colors.white,
                              //           borderRadius:
                              //           BorderRadius.circular(13)),
                              //       child: Center(
                              //         child: Text('Application for new bin' ,style: GoogleFonts.montserrat(
                              //         fontWeight: FontWeight.w600,
                              //             color: Colors.grey,
                              //             fontSize: 13)
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                ),
                const SizedBox(
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
