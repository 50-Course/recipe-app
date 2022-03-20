import 'package:flutter/material.dart';
import './recipe_model.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetail> createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label)),
      body: SafeArea(
        child: Column(children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 400,
            child: Image(image: AssetImage(widget.recipe.imageUrl)),
          ),
          const SizedBox(height: 4.0),
          Text(widget.recipe.label, style: const TextStyle(fontSize: 18.0)),
        ]),
      ),
    );
  }
}


// //

