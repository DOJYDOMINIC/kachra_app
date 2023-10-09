//
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
//
// class Calender extends StatefulWidget {
//   @override
//   CalenderState createState() => CalenderState();
// }
//
// class CalenderState extends State<Calender> {
//   late DateTime _lastVisitedDate; // Store the last visited date.
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Initialize the last visited date. You can set it to your preferred date.
//     _lastVisitedDate = DateTime.now().subtract(Duration(days: 1));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('DatePicker demo'),
//         ),
//         body: Stack(
//           children: <Widget>[
//             Positioned(
//               left: 0,
//               right: 0,
//               top: 80,
//               bottom: 0,
//               child: SfDateRangePicker(
//                 selectionRadius: 30,
//                 selectionShape: DateRangePickerSelectionShape.circle,
//                 onSelectionChanged: _onSelectionChanged,
//                 selectionMode: DateRangePickerSelectionMode.range,
//                 initialSelectedRange: PickerDateRange(
//                   DateTime.now().subtract(const Duration(days: 4)),
//                   DateTime.now().add(const Duration(days: 3)),
//                 ),
//                 startRangeSelectionColor: Colors.red,
//                 endRangeSelectionColor: Colors.green,
//                 cellBuilder: (BuildContext context, DateRangePickerCellDetails cellDetails) {
//                   // Check if the current cell date is within the selected range.
//                   bool isDateInRange = cellDetails.date.isAfter(_lastVisitedDate) &&
//                       cellDetails.date.isBefore(DateTime.now());
//
//                   return GestureDetector(
//                     onTap: () {
//                       // Handle cell tap here if needed.
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: isDateInRange ? Colors.red : Colors.transparent,
//                       ),
//                       child: Center(
//                         child: Text(
//                           cellDetails.date.day.toString(),
//                           style: TextStyle(
//                             color: isDateInRange ? Colors.white : Colors.black,
//                             fontWeight: isDateInRange ? FontWeight.bold : FontWeight.normal,
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
//     // Handle date range selection here if needed.
//     print('Selected Range: ${args.value.startDate} - ${args.value.endDate}');
//   }
// }
