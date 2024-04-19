// import 'package:flutter/material.dart';
//
// class showModalBottomSheet extends StatelessWidget {
//   const showModalBottomSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return showModalBottomSheet(
//       backgroundColor: Colors.transparent,
//       context: context,
//       builder: (BuildContext context) {
//         return Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [Colors.grey[300]!, Colors.grey[600]!],
//               ),
//               borderRadius: BorderRadius.circular(20.0),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: Offset(0, 3),
//                 ),
//               ],
//             ),
//             height: 300.0,
//             child: ListWheelScrollView(
//               itemExtent: 50.0,
//               physics: FixedExtentScrollPhysics(),
//               overAndUnderCenterOpacity: 0.5,
//               children: List.generate(
//                 5,
//                     (index) => Container(
//                   color: Colors.white,
//                   child: ListTile(
//                     selectedTileColor: Colors.blue,
//                     title: Center(
//                       child: Text(
//                         _getLocationName(index),
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.black87,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
// String _getLocationName(int index) {
//   switch (index) {
//     case 0:
//       return 'Pakistan';
//     case 1:
//       return 'Lahore';
//     case 2:
//       return 'Faisalabad';
//     case 3:
//       return 'Karachi';
//     case 4:
//       return 'Islamabad';
//     default:
//       return 'Unknown';
//   }
// }
