import 'package:flutter/material.dart';
import 'package:recipe_app/recipe_details.dart';

import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: Recipe.samples.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RecipeDetails(recipe: Recipe.samples[index]);
                      }));
                    },
                    child: buildRecipeCard(Recipe.samples[index]));
              })),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Image(image: AssetImage(recipe.imageUrl)),
            SizedBox(height: 15),
            Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  recipe.label,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
