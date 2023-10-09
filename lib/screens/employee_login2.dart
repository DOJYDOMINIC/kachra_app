
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/residents.dart';

class EmpLogin2 extends StatelessWidget {
  const EmpLogin2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/SignIn-Background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign In',
                    style: TextStyle(color: Color.fromRGBO(95, 128, 94, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,0,30,0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Email Address',
                              style: GoogleFonts.montserrat(color: Color.fromRGBO(95, 128, 94, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black), // Border color when not in focus
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.black), // Border color when focused
                              ),),

                            //   InputDecoration(
                            //     focusedBorder: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(15),
                            //         borderSide: BorderSide(
                            //         width: 2,color: Colors.black)),
                            //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                            //
                            //   ),
                            // ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,0,30,0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Password',
                              style: GoogleFonts.montserrat(color: Color.fromRGBO(95, 128, 94, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          height: 50,
                          child: TextField(

                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black), // Border color when not in focus
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 2,
                                    color:Colors.black), // Border color when focused
                              ),),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(20),
                            //     borderSide: BorderSide(color: Colors.white)),

                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         'Password',
                  //         style: GoogleFonts.montserrat(color: Color.fromRGBO(95, 128, 94, 1),
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.bold,),
                  //       ),
                  //     ],
                  //   ),
                  // ),


                  // Container(
                  //   width: MediaQuery.of(context).size.width*0.8,
                  //   height: 50,
                  //   child: TextField(
                  //     onTap: (){},
                  //     decoration: InputDecoration(
                  //
                  //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                  //         borderSide: BorderSide(color: Color.fromRGBO(95, 128, 94, 1)))
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 65),
                  GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mystatus(),));
                    },

                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                          // border: Border.all(color: Colors.black),
                          color: Color.fromRGBO(95, 128, 94, 1)),
                      width: MediaQuery.of(context).size.width*0.8,
                      height: 50,
                      child: Center(
                        child: Text('Sign In',style: GoogleFonts.montserrat(
                            color:Color.fromRGBO(239, 239, 239, 1),
                            fontWeight: FontWeight.w600),
                        ),
                      ),


                    ),
                  ),
                  // SizedBox(height: 15),
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(100, 20, 0, 0),
                  //   child: Row(
                  //     children: [
                  //       Center(
                  //         child: Text ('Don\'t have an account?',style:
                  //         GoogleFonts.montserrat(color:
                  //         Color.fromRGBO(95, 128, 94, 1),fontSize: 13,
                  //             fontWeight: FontWeight.w600)
                  //
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap:() {},
                  //
                  //         child: Text(' Sign Up',
                  //           style: GoogleFonts.montserrat(
                  //               color: Color.fromRGBO(20, 57, 20, 1),fontSize: 13,
                  //               fontWeight: FontWeight.w600
                  //           ),),
                  //       )
                  //
                  //     ],
                  //   ),
                  // ),


                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
