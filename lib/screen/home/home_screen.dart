// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Default user name until Firebase logic is implemented
//     const String userName = "User";

//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60),
//         child: TopAppBarComponent(
//           onProfileTap: () {
//             Navigator.pushNamed(context, '/profile_view');
//           },
//           onCalendarTap: () {
//             // Implement calendar functionality here
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Add greeting text here
//             Text(
//               "Hey $userName,\nHow is your diet?",
//               style: const TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Nutrients indicator section
//             const NutrientsIndicatorComponent(),
//             const SizedBox(height: 20),

//             // Water consumed section
//             const WaterConsumedComponent(),
//             const SizedBox(height: 20),

//             // Weight section
//             const WeightSectionComponent(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TopAppBarComponent extends StatelessWidget {
//   final VoidCallback onProfileTap;
//   final VoidCallback onCalendarTap;

//   const TopAppBarComponent({
//     super.key,
//     required this.onProfileTap,
//     required this.onCalendarTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       elevation: 0,
//       centerTitle: false,
//       leading: GestureDetector(
//         onTap: onProfileTap,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: CircleAvatar(
//             backgroundImage: AssetImage(
//                 'assets/images/profile.jpg'), // Replace with profile image path
//           ),
//         ),
//       ),
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.calendar_today, color: Colors.black),
//           onPressed: onCalendarTap,
//         ),
//       ],
//     );
//   }
// }
// // class HomeScreen2 extends StatelessWidget {
// //   const HomeScreen2({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: PreferredSize(
// //         preferredSize: const Size.fromHeight(60),
// //         child: TopAppBarComponent(
// //           onProfileTap: () {
// //             Navigator.pushNamed(context, '/profile_view');
// //           },
// //           onCalendarTap: () {
// //             // Implement calendar functionality here
// //           },
// //         ),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             const NutrientsIndicatorComponent(),
// //             const SizedBox(height: 20),
// //             const WaterConsumedComponent(),
// //             const SizedBox(height: 20),
// //             const WeightSectionComponent(),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class TopAppBarComponent extends StatelessWidget {
// //   final VoidCallback onProfileTap;
// //   final VoidCallback onCalendarTap;

// //   const TopAppBarComponent({
// //     super.key,
// //     required this.onProfileTap,
// //     required this.onCalendarTap,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return AppBar(
// //       backgroundColor: Colors.white,
// //       elevation: 0,
// //       centerTitle: false,
// //       leading: GestureDetector(
// //         onTap: onProfileTap,
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: CircleAvatar(
// //             backgroundImage: AssetImage(
// //                 'assets/img/profile.jpg'), // Replace with profile image path
// //           ),
// //         ),
// //       ),
// //       actions: [
// //         IconButton(
// //           icon: const Icon(Icons.calendar_today, color: Colors.black),
// //           onPressed: onCalendarTap,
// //         ),
// //       ],
// //     );
// //   }
// // }

// class NutrientsIndicatorComponent extends StatelessWidget {
//   const NutrientsIndicatorComponent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           "Nutrients Indicator",
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         Container(
//           padding: const EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.shade300,
//                 blurRadius: 10,
//                 offset: const Offset(0, 5),
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _nutrientItem("Proteins", 150, 225, Colors.red),
//                   _nutrientItem("Fats", 30, 118, Colors.yellow),
//                   _nutrientItem("Carbs", 319, 340, Colors.brown),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               _calorieBar(2456, 3400),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _nutrientItem(String name, int consumed, int target, Color color) {
//     double progress = consumed / target;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(name, style: const TextStyle(fontSize: 16)),
//         const SizedBox(height: 5),
//         SizedBox(
//           width: 80, // Fixed width for the progress bar
//           child: LinearProgressIndicator(
//             value: progress,
//             color: color,
//             backgroundColor: Colors.grey.shade300,
//             minHeight: 5,
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text("$consumed / $target",
//             style: const TextStyle(fontWeight: FontWeight.bold)),
//       ],
//     );
//   }

//   Widget _calorieBar(int consumed, int target) {
//     double progress = consumed / target;
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text("Calories", style: TextStyle(fontSize: 16)),
//         const SizedBox(height: 5),
//         LinearProgressIndicator(
//           value: progress,
//           color: Colors.green,
//           backgroundColor: Colors.grey.shade300,
//         ),
//         const SizedBox(height: 5),
//         Text("$consumed / $target"),
//       ],
//     );
//   }
// }

// class WaterConsumedComponent extends StatefulWidget {
//   const WaterConsumedComponent({super.key});

//   @override
//   _WaterConsumedComponentState createState() => _WaterConsumedComponentState();
// }

// class _WaterConsumedComponentState extends State<WaterConsumedComponent> {
//   double _waterConsumed = 1.9; // Current water consumption in liters
//   double _targetWater = 2.5; // Target water consumption in liters

//   @override
//   Widget build(BuildContext context) {
//     double progress = _waterConsumed / _targetWater;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           "Water Consumed",
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         Container(
//           padding: const EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.shade300,
//                 blurRadius: 10,
//                 offset: const Offset(0, 5),
//               ),
//             ],
//           ),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _editableField(
//                     label: "Water Drank",
//                     value: _waterConsumed,
//                     onChanged: (value) {
//                       setState(() {
//                         _waterConsumed =
//                             double.tryParse(value) ?? _waterConsumed;
//                       });
//                     },
//                   ),
//                   _editableField(
//                     label: "Target",
//                     value: _targetWater,
//                     onChanged: (value) {
//                       setState(() {
//                         _targetWater = double.tryParse(value) ?? _targetWater;
//                       });
//                     },
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   Container(
//                     height: 100,
//                     width: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.grey.shade300,
//                       borderRadius:
//                           const BorderRadius.vertical(top: Radius.circular(5)),
//                     ),
//                   ),
//                   Container(
//                     height: 100 * progress.clamp(0.0, 1.0), // Progress height
//                     width: 50,
//                     decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [Colors.blueAccent, Colors.blue],
//                         stops: [0.0, 1.0],
//                       ),
//                       borderRadius:
//                           BorderRadius.vertical(top: Radius.circular(5)),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 "Progress: ${(_waterConsumed / _targetWater * 100).clamp(0, 100).toStringAsFixed(1)}%",
//                 style: const TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _editableField({
//     required String label,
//     required double value,
//     required ValueChanged<String> onChanged,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: const TextStyle(fontSize: 14)),
//         const SizedBox(height: 5),
//         SizedBox(
//           width: 80,
//           child: TextFormField(
//             initialValue: value.toStringAsFixed(1),
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(
//               isDense: true,
//               contentPadding:
//                   const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//               ),
//             ),
//             onChanged: onChanged,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class WeightSectionComponent extends StatefulWidget {
//   const WeightSectionComponent({super.key});

//   @override
//   _WeightSectionComponentState createState() => _WeightSectionComponentState();
// }

// class _WeightSectionComponentState extends State<WeightSectionComponent> {
//   double _currentWeight = 70.0; // Example current weight value

//   void _registerWeight() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         double newWeight = _currentWeight;
//         return AlertDialog(
//           title: const Text("Register Weight"),
//           content: TextFormField(
//             initialValue: newWeight.toString(),
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(
//               labelText: "Enter your weight (kg)",
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//             ),
//             onChanged: (value) {
//               newWeight = double.tryParse(value) ?? newWeight;
//             },
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(); // Close dialog without saving
//               },
//               child: const Text("Cancel"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _currentWeight = newWeight;
//                 });
//                 Navigator.of(context).pop(); // Save and close dialog
//               },
//               child: const Text("Save"),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           "Weight",
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         Container(
//           padding: const EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.shade300,
//                 blurRadius: 10,
//                 offset: const Offset(0, 5),
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Your Weight",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     "$_currentWeight kg",
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueAccent,
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: _registerWeight,
//                     icon: const Icon(Icons.add_circle,
//                         color: Color.fromARGB(255, 185, 186, 185)),
//                     iconSize: 36,
//                   ),
//                   const SizedBox(width: 10),
//                   Image.asset(
//                     'assets/images/weight.png', // Replace with your weight.png asset
//                     width: 40,
//                     height: 40,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:eat_fit/common/components/greeting_text_component.dart';
import 'package:eat_fit/common/components/nutrient_indicator_component.dart';
import 'package:eat_fit/common/components/top_app_bar_component.dart';
import 'package:eat_fit/common/components/water_input_component.dart';
import 'package:eat_fit/common/components/weight_input_component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: TopAppBarComponent(
          onProfileTap: () {
            Navigator.pushNamed(context, '/profile'); // Navigate to Profile
          },
          onCalendarTap: () {
            Navigator.pushNamed(context, '/calendar'); // Show Calendar
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting Text Component
            const GreetingTextComponent(userName: "User"),
            const SizedBox(height: 20),

            // Nutrients Indicator Component
            const NutrientsIndicatorComponent(),
            const SizedBox(height: 20),

            // Water Intake Component
            const WaterConsumedComponent(),
            const SizedBox(height: 20),
            // Weight Input Component
            const WeightSectionComponent(),
          ],
        ),
      ),
    );
  }
}
