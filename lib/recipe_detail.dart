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
  int _sliderVal = 1;

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
          Expanded(
              child: ListView.builder(
            padding: const EdgeInsets.all(7.0),
            itemCount: widget.recipe.ingredents.length,
            itemBuilder: (BuildContext context, int index) {
              final ingredent = widget.recipe.ingredents[index];
              return Text(
                  '${ingredent.quantity} ${ingredent.measure} ${ingredent.name}');
            },
          )),
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${_sliderVal * widget.recipe.servings} servings',
            value: _sliderVal.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _sliderVal = newValue.round();
              });
            },
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.blue,
          ),
        ]),
      ),
    );
  }
}


// //

