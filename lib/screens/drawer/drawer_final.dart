
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../start_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 100),
      child: Drawer(
        width: MediaQuery.of(context).size.width / 1.09,
        shape: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
                topRight: Radius.circular(30))),
        backgroundColor: const Color.fromRGBO(95, 128, 94, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 220,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(95, 128, 94, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 5, 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Scaffold.of(context).openEndDrawer();
                                },
                                child: const Icon(Icons.menu,size:30,)),
                            Row(
                              children: [
                                const SizedBox(
                                    height: 30,
                                    child: Image(image: AssetImage('asset/image/bell.png'))),
                                const SizedBox(
                                  width:20,
                                ),
                                GestureDetector(
                                    onTap: (){
                                      Scaffold.of(context).openEndDrawer();
                                    },
                                    child: SvgPicture.asset('asset/image/Vector.svg'))
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                  height:65,
                                  child: Image(image: AssetImage('asset/image/pers.png'))),
                              Text(
                                'Bhawana Kanth',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const StartPage(),));
              },
              child: ListTile(
                tileColor: const Color.fromRGBO(229, 224, 223, 1),
                leading: SvgPicture.asset('asset/image/home.svg'),
                title: Text('Home',
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(95, 128, 94, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: ListTile(
                tileColor: const Color.fromRGBO(95, 128, 94, 1),
                leading: const Image(
                  width: 25,
                  image: AssetImage('asset/image/setting.png'),),
                title: Text(
                  'Settings',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromRGBO(239, 239, 239, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: ListTile(
                tileColor: const Color.fromRGBO(229, 224, 223, 1),
                leading: const Image(
                  width: 25,
                  image: AssetImage('asset/image/lock.png'),),
                title: Text(
                  'Change password',
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(95, 128, 94, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: ListTile(
                tileColor: const Color.fromRGBO(95, 128, 94, 1),
                leading: const Image(
                  width: 25,
                  image: AssetImage('asset/image/help.png'),),
                title: Text(
                  'Help & Support',
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(239, 239, 239, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: ListTile(
                tileColor: const Color.fromRGBO(229, 224, 223, 1),
                leading: const Image(
                  width: 25,
                  image: AssetImage('asset/image/bug.png'),),
                title: Text(
                  'Report Bug',
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(95, 128, 94, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: ListTile(
                tileColor: const Color.fromRGBO(95, 128, 94, 1),
                leading: const Image(
                  width: 25,
                  image: AssetImage('asset/image/about.png'),),
                title: Text(
                  'About Us',
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(239, 239, 239, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: ListTile(
                tileColor: const Color.fromRGBO(229, 224, 223, 1),
                leading: const Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                title: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(95, 128, 94, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
