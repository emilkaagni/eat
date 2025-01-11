// import 'package:eat_fit/common/components/meal_input_component.dart';
// import 'package:eat_fit/common/components/top_app_bar_component.dart';
// import 'package:flutter/material.dart';

// class DiaryScreen extends StatelessWidget {
//   const DiaryScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60),
//         child: TopAppBarComponent(
//           onProfileTap: () {
//             // Navigate to Profile
//           },
//           onCalendarTap: () {
//             // Show Calendar
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Input Your Meals",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),

//             // Breakfast Input Section
//             MealInputComponent(
//               mealType: "Breakfast",
//               onAddMeal: () {
//                 Navigator.pushNamed(context, '/add_meal',
//                     arguments: "Breakfast");
//               },
//             ),
//             const SizedBox(height: 20),

//             // Lunch Input Section
//             MealInputComponent(
//               mealType: "Lunch",
//               onAddMeal: () {
//                 Navigator.pushNamed(context, '/add_meal', arguments: "Lunch");
//               },
//             ),
//             const SizedBox(height: 20),

//             // Dinner Input Section
//             MealInputComponent(
//               mealType: "Dinner",
//               onAddMeal: () {
//                 Navigator.pushNamed(context, '/add_meal', arguments: "Dinner");
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:eat_fit/common/components/meal_input_component.dart';
import 'package:eat_fit/common/components/top_app_bar_component.dart';
import 'package:eat_fit/common/components/water_input_component.dart';
import 'package:eat_fit/common/components/weight_input_component.dart';
import 'package:flutter/material.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: TopAppBarComponent(
          onProfileTap: () {
            // Navigate to Profile
          },
          onCalendarTap: () {
            // Show Calendar
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // // Water Intake Section
            // const Text(
            //   "Water Intake",
            //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
            const SizedBox(height: 10),
            const WaterConsumedComponent(),
            const SizedBox(height: 20),

            // Meal Input Sections
            const Text(
              "Meals",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            MealInputComponent(
              mealType: "Breakfast",
              onAddMeal: () {
                Navigator.pushNamed(context, '/add_meal',
                    arguments: "Breakfast");
              },
            ),
            const SizedBox(height: 10),
            MealInputComponent(
              mealType: "Lunch",
              onAddMeal: () {
                Navigator.pushNamed(context, '/add_meal', arguments: "Lunch");
              },
            ),
            const SizedBox(height: 10),
            MealInputComponent(
              mealType: "Dinner",
              onAddMeal: () {
                Navigator.pushNamed(context, '/add_meal', arguments: "Dinner");
              },
            ),
            const SizedBox(height: 20),

            // Weight Input Section
            const Text(
              "Weight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const WeightSectionComponent(),
          ],
        ),
      ),
    );
  }
}
