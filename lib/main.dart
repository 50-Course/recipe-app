import 'dart:ui';

import 'package:flutter/material.dart';
import './recipe_model.dart';
import './recipe_detail.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Calculator',
      theme: ThemeData(
        primaryColor: Color.fromARGB(227, 223, 227, 225),
      ),
      home: MyHomePage(title: 'Recipe App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: SafeArea(
            child: ListView.builder(
                itemCount: Recipe.samples.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      child: buildRecipeCard(Recipe.samples[index]),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RecipeDetail(recipe: Recipe.samples[index]);
                        }));
                      });
                })));
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(height: 14.0),
            Text(recipe.label,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                    fontFamily: 'Palantino')),
          ],
        ),
      ));
}
