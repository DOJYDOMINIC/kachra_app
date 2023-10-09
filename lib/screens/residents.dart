import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/start_page.dart';
// import 'package:kachara_k/drawer/drawer_complet.dart';

import '../main.dart';
import 'bulkwastcollection.dart';
import 'complaints.dart';
import 'drawer/drawer_final.dart';

class Mystatus extends StatelessWidget {
  const Mystatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
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
            SizedBox(height: MediaQuery.of(context).size.height*.08,),
            Padding(
              padding: const EdgeInsets.fromLTRB(50,0,50,0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: MediaQuery.of(context).size.width*8,
                      height: MediaQuery.of(context).size.height*.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: app_color,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(image: DecorationImage(
                                image: AssetImage('asset/image/user (1) 1.png',))),
                          ),
                          SizedBox(height: 5,),
                          Text('My Status',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,38,0,38),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>incidents(),));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width*8,
                        height: MediaQuery.of(context).size.height*.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: app_color,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 46,
                              width: 46,
                              decoration: BoxDecoration(image: DecorationImage(
                                  image: AssetImage('asset/image/bad-review 2.png',))),
                            ),
                            SizedBox(height: 5,),
                            Text('Complaints',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Services(),));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*8,
                      height: MediaQuery.of(context).size.height*.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: app_color,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(image: DecorationImage(
                                image: AssetImage('asset/image/repair-tool 1.png',))),
                          ),
                          SizedBox(height: 5,),
                          Text('Services',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.08,),
            Container(
              height: MediaQuery.of(context).size.height*.02,
              child:Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10 , 0),
                // child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
                //       IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                //     ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
