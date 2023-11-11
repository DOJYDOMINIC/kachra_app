import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kachra_app/screens/drawer/drawer_final.dart';
import 'package:kachra_app/screens/waste_type.dart';

class RegRes extends StatefulWidget {
  const RegRes({super.key});

  @override
  State<RegRes> createState() => _RegResState();
}

class _RegResState extends State<RegRes> {
  @override
  Widget build(BuildContext context) {
    String scanBarcodein = '';

    Future<void> scanQRIn() async {
      String barcodeScanRes;
      try {
        barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#ff6666', 'Cancel', true, ScanMode.QR);
        print(barcodeScanRes);
      } on PlatformException {
        barcodeScanRes = 'Failed to get platform version.';
      }
// scanner
      setState(() {
        scanBarcodein = barcodeScanRes;
      });
    }
    return  Scaffold(
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        icon: const Icon(Icons.menu, color: Colors.black, size: 35),
                      );
                    },
                  ),
                ),
              ],
            ),

            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: const BoxDecoration(
                    // color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage('asset/image/scaner.png')),
                  ),
                ),

                // SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    scanQRIn();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WasteType(),
                        ));
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(95, 128, 94, 1)),
                    child: Center(
                      child: Text(
                        'Scan QR Code',
                        style: GoogleFonts.montserrat(
                            color: const Color.fromRGBO(239, 239, 239, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(height: MediaQuery.of(context).size.height*0.1,)
          ],
        ),
      ),
    );
  }
}
