import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/start_page.dart';

import '../main.dart';
import 'drawer/drawer_final.dart';

class Bulkwaste extends StatelessWidget {
  const Bulkwaste({super.key});

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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        drawer: MyDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height:30,
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
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(50,0,50,0),
                //   child: Column(
                //     children: [
                //       GestureDetector(
                //         onTap: (){},
                //         child: Container(
                //           width: MediaQuery.of(context).size.width*8,
                //           height: MediaQuery.of(context).size.height*.18,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(13),
                //             color: app_color,
                //           ),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Container(
                //                 height: 46,
                //                 width: 46,
                //                 decoration: BoxDecoration(image: DecorationImage(
                //                     image: AssetImage('assets/images/user (1) 1.png',))),
                //               ),
                //               SizedBox(height: 5,),
                //               Text('My Status',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),
                //               )
                //             ],
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.fromLTRB(0,38,0,38),
                //         child: GestureDetector(
                //           onTap: (){},
                //           child: Container(
                //             width: MediaQuery.of(context).size.width*8,
                //             height: MediaQuery.of(context).size.height*.18,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(13),
                //               color: app_color,
                //             ),
                //             child: Column(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   height: 46,
                //                   width: 46,
                //                   decoration: BoxDecoration(image: DecorationImage(
                //                       image: AssetImage('assets/images/bad-review 2.png',))),
                //                 ),
                //                 SizedBox(height: 5,),
                //                 Text('My Status',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),
                //                 )
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),GestureDetector(
                //         onTap: (){},
                //         child: Container(
                //           width: MediaQuery.of(context).size.width*8,
                //           height: MediaQuery.of(context).size.height*.18,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(13),
                //             color: app_color,
                //           ),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Container(
                //                 height: 46,
                //                 width: 46,
                //                 decoration: BoxDecoration(image: DecorationImage(
                //                     image: AssetImage('assets/images/repair-tool 1.png',))),
                //               ),
                //               SizedBox(height: 5,),
                //               Text('My Status',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),
                //               )
                //             ],
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Stack(
                    children: [
                      Container(
                        // height: 400,
                        width: 290,
                        decoration: BoxDecoration(
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
                                decoration: BoxDecoration(
                                    color: app_color,
                                    borderRadius: BorderRadiusDirectional.only(
                                        bottomStart: Radius.circular(13),
                                        bottomEnd: Radius.circular(50),
                                        topEnd: Radius.circular(13),
                                        topStart: Radius.circular(13))),
                                child: Center(
                                  child: Text('Bulk waste collection',
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 13)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 36, 0, 0),
                                child: Container(
                                  height: 40,
                                  width: 258,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13.0),
                                    color: Colors.white,
                                  ),
                                  child: Stack(
                                    children: [
                                      Center(
                                          child: Text(
                                            'Ward',
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey,
                                                fontSize: 13),
                                          )),
                                      TextField(
                                        textAlignVertical:
                                        TextAlignVertical.center,
                                        // Center-align the hint text vertically
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          // Remove the underline border
                                          hintStyle:
                                          TextStyle(color: Colors.black),
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal:
                                              16.0), // Adjust horizontal padding as needed
                                        ),
                                      ),
                                    ],
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
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 258,
                                height: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(13)),
                                padding: EdgeInsets.all(16.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Eg : Events,functions,etc...',
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintStyle: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey.shade300,
                                        fontSize: 13),
                                  ),
                                  cursorColor: Colors.black,
                                  maxLines:
                                  null, // Allow text to wrap to the next line
                                ),
                              )
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
