class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredents;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredents);

  static List<Recipe> samples = [
    Recipe('Spaghetti & Meat steak', 'assets/2126711929_ef763de2b3_w.jpg', 4, [
      Ingredient(1, 'box', 'Spaghetti'),
      Ingredient(4, '', 'Frozen Meatballs'),
      Ingredient(0.5, 'jar', 'sauce'),
    ]),
    Recipe('Tomato Soup', 'assets/27729023535_a57606c1be.jpg', 2,
        [Ingredient(1, 'can', 'Tomato Soup')]),
    Recipe('Grilled Cheese', 'assets/3187380632_5056654a19_b.jpg', 1, []),
    Recipe(
        'Chocolate Chip Cookies', 'assets/15992102771_b92f4cc00a_b.jpg', 20, [
      Ingredient(2, 'slices', 'Cheese'),
      Ingredient(2, 'slices', 'Bread'),
    ]),
    Recipe('Taco Salad', 'assets/8533381643_a31a99e8a6_c.jpg', 6, [
      Ingredient(4, 'cups', 'flour'),
      Ingredient(2, 'cups', 'sugar'),
      Ingredient(0.5, 'cups', 'chocolate chips'),
    ]),
    Recipe('Hawaiian Pizza', 'assets/15452035777_294cefced5_c.jpg', 2, []),
  ];
}

class Ingredient {
  double measure;
  String quantity;
  String name;

  Ingredient(this.measure, this.quantity, this.name);
}
