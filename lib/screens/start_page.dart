import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/drawer/drawer_final.dart';

import 'employee_login.dart';
import 'employee_login2.dart';

const Color app_color = Color.fromRGBO(95, 128, 94, 1); /*green-color*/
const Color app_color2 = Color.fromRGBO(229, 224, 223, 1); /*cream-color*/

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
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
                              icon: const Icon(Icons.menu,
                                  color: Colors.black, size: 35),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 300,
                                    child: Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'asset/image/StartPage MrBin.png'))),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    height: 100,
                                    child: Image(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'asset/image/tECNIMONT_startpage.png'))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Kachra',
                        style: GoogleFonts.montserrat(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height /2.5,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: app_color,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EmpLogin(),
                            ));
                      },
                      child: Container(
                        height: 45,
                        width: 247,
                        decoration: BoxDecoration(
                            color: app_color2,
                            borderRadius: BorderRadius.circular(17.0)),
                        child: Center(
                          child: Text('Waste Collector',
                              style: GoogleFonts.montserrat(
                                  color: app_color,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                    const SizedBox(height:30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EmpLogin2(),
                            ));
                      },
                      child: Container(
                        height: 45,
                        width: 247,
                        decoration: BoxDecoration(
                            color: app_color2,
                            borderRadius: BorderRadius.circular(17.0)),
                        child: Center(
                          child: Text('Residents',
                              style: GoogleFonts.montserrat(
                                  color: app_color,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
