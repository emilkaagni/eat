import 'package:flutter/material.dart';

class SearchFoodScreen extends StatefulWidget {
  const SearchFoodScreen({super.key});

  @override
  _SearchFoodScreenState createState() => _SearchFoodScreenState();
}

class _SearchFoodScreenState extends State<SearchFoodScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> _searchResults = [];
  bool _isLoading = false;

  void _searchFood() async {
    final query = _searchController.text;
    if (query.isEmpty) return;

    setState(() {
      _isLoading = true;
    });

    // Replace with FatSecret API call
    final results = await _fetchFoodFromFatSecret(query);

    setState(() {
      _isLoading = false;
      _searchResults = results;
    });
  }

  Future<List<dynamic>> _fetchFoodFromFatSecret(String query) async {
    // FatSecret API integration (use your API key and secret)
    // This is a placeholder function. Replace it with the actual API call.
    return [
      {
        'name': 'Apple',
        'calories': 52,
        'protein': 0.3,
        'fat': 0.2,
        'carbs': 14
      },
      {
        'name': 'Banana',
        'calories': 96,
        'protein': 1.3,
        'fat': 0.3,
        'carbs': 27
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Food"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: "Search food",
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _searchFood,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Loading indicator
            if (_isLoading) const Center(child: CircularProgressIndicator()),

            // Search results
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final food = _searchResults[index];
                  return ListTile(
                    title: Text(food['name']),
                    subtitle: Text(
                        "Calories: ${food['calories']} | Protein: ${food['protein']}g | Fat: ${food['fat']}g | Carbs: ${food['carbs']}g"),
                    onTap: () {
                      // Navigate to food details page with food data
                      Navigator.pushNamed(context, '/food_details',
                          arguments: food);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
