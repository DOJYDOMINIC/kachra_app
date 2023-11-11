import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/start_page.dart';
import 'drawer/drawer_final.dart';

class EnterDetails extends StatefulWidget {
  const EnterDetails({super.key});

  @override
  State<EnterDetails> createState() => _EnterDetailsState();
}

class _EnterDetailsState extends State<EnterDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer:const MyDrawer(),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 5,),
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
                        icon: const Icon(Icons.menu, color: Colors.black, size: 35),
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
                    onTap: (){
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
                            decoration: const BoxDecoration(image: DecorationImage(
                                image: AssetImage('asset/image/note.png',))),
                          ),
                          const SizedBox(height: 5,),
                          Text('Enter HH Details',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,38,0,38),
                    child: GestureDetector(
                      onTap: (){
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
                              decoration: const BoxDecoration(image: DecorationImage(
                                  image: AssetImage('asset/image/location.png',))),
                            ),
                            const SizedBox(height: 5,),
                            Text('Take Geo location',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),GestureDetector(
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
                            decoration: const BoxDecoration(image: DecorationImage(
                                image: AssetImage('asset/image/qr.png',))),
                          ),
                          const SizedBox(height: 5,),
                          Text('Generate Unique ID',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.08,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
              child:const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10 , 0),
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
