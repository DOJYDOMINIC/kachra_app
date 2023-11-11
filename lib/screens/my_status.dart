import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'drawer/drawer_final.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  bool inone = false;
  final DateRangePickerController _controller = DateRangePickerController();
  final DateRangePickerController _controllersingle = DateRangePickerController();
  late DateTime _startDate;
  late DateTime _endDate;
  late DateTime _initialSelectedDate; // Add this variable

  @override
  void initState() {
    super.initState();
    _startDate = DateTime.now();
    _endDate = DateTime.now();
    // _initialSelectedDate = DateTime(023, 10, 13),
    _controllersingle.selectedDate = _initialSelectedDate = DateTime(2023, 10, 13); // Set your initial selected date here
    _controller.selectedRanges = [PickerDateRange(_startDate, _endDate)];
  }

  void _updateDateRange(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      final range = args.value as PickerDateRange;
      setState(() {
        if (range.startDate != null) {
          _startDate = range.startDate!;
        } else {
          print("start null");
        }
        if (range.endDate != null) {
          _endDate = range.endDate!;
        } else {
          print("end null");
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                const Image(image: AssetImage('asset/image/calender_back.png')),
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
                // Padding(
                //   padding: const EdgeInsets.only(top: 110, left: 20, right: 20),
                //   child: Container(
                //     height: 330,
                //     child: SfDateRangePicker(
                //       headerStyle: DateRangePickerHeaderStyle(
                //         textStyle: GoogleFonts.montserrat(
                //             color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                //         textAlign: TextAlign.start,),
                //       controller: _controllersingle,
                //       initialDisplayDate: _initialSelectedDate,
                //       todayHighlightColor: Colors.transparent,
                //       selectionShape: DateRangePickerSelectionShape.circle,
                //       extendableRangeSelectionDirection: ExtendableRangeSelectionDirection.both,
                //       // todayHighlightColor: Colors.red,
                //       rangeSelectionColor: Color.fromARGB(225, 229, 224, 223),
                //       selectionMode: DateRangePickerSelectionMode.multiple,
                //       selectionColor: Colors.green,
                //       onSelectionChanged: _updateDateRange,
                //     ),
                //   ),
                // ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 110, left: 20, right: 20),
                    child: SizedBox(
                      height: 330,
                      child: SfDateRangePicker(
                        headerStyle: DateRangePickerHeaderStyle(
                          textStyle: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          textAlign: TextAlign.start,),
                        controller: _controller,
                        initialSelectedDate: DateTime(2023, 10, 13),
                        selectionShape: DateRangePickerSelectionShape.circle,
                        extendableRangeSelectionDirection: ExtendableRangeSelectionDirection.both,
                        todayHighlightColor: Colors.transparent,
                        selectionMode: DateRangePickerSelectionMode.multiple,
                        selectionColor: Colors.green,
                        onSelectionChanged: _updateDateRange,
                      ),
                    ),
                  ),
//
              ],
            ),
            // Text('Start Date: $_startDate'),
            // Text('End Date: $_endDate'),
          ],
        ),
      ),
    );
  }
}
