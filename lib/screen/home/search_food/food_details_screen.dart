import 'package:flutter/material.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  final TextEditingController _weightController = TextEditingController();
  late Map<String, dynamic> _food;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _food = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
  }

  void _registerMeal() {
    final weight = double.tryParse(_weightController.text) ?? 0.0;
    final calories = (_food['calories'] * weight) / 100;
    final protein = (_food['protein'] * weight) / 100;
    final fat = (_food['fat'] * weight) / 100;
    final carbs = (_food['carbs'] * weight) / 100;

    // Save the meal to your database or state
    print('Registered: $weight g of ${_food['name']}');
    print(
        'Calories: $calories | Protein: $protein | Fat: $fat | Carbs: $carbs');

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_food['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter the weight (grams) for ${_food['name']}:",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Weight (grams)",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _registerMeal,
              child: const Text("Register Meal"),
            ),
          ],
        ),
      ),
    );
  }
}
