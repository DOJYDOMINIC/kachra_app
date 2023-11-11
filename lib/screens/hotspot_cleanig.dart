import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kachra_app/screens/start_page.dart';
import 'dart:io';
import 'drawer/drawer_final.dart';

class Hotspotcleaning extends StatefulWidget {

  const Hotspotcleaning({super.key});

  @override
  State<Hotspotcleaning> createState() => _HotspotcleaningState();
}

class _HotspotcleaningState extends State<Hotspotcleaning> {
  final TextEditingController _ward = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!FocusScope.of(context).hasPrimaryFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        drawer: const MyDrawer(),
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
                                  child: Text('Hotspot cleaning',
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
                                      SizedBox(
                                        height: 25,
                                        child: TextField(
                                          controller: _ward,
                                          textAlignVertical:
                                          TextAlignVertical.center,
                                          // Center-align the hint text vertically
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            // Remove the underline border
                                            hintStyle:
                                            TextStyle(color: Colors.black),
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal:
                                                16.0), // Adjust horizontal padding as needed
                                          ),
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
                                  onTap: () {
                                  },

                                  child: Container(
                                    height: 52,
                                    width: 258,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(13)),
                                    child: const Icon(
                                      Icons.location_on_outlined,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final picker = ImagePicker();
                                  final XFile? pickedFile = await picker.pickImage(source: ImageSource.camera);

                                  if (pickedFile != null) {
                                    // You can use the pickedFile to display or upload the captured image
                                    File imageFile = File(pickedFile.path);

                                    // Add your logic to handle the captured image here
                                    // For example, you can display the image using Image.file:
                                    // Image.file(imageFile)

                                    // Remember to import 'dart:io' for File
                                  }
                                },
                                child: Container(
                                    width: 258,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(13)),
                                    padding: const EdgeInsets.all(16.0),
                                    child: const Icon(Icons.camera_alt)
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
