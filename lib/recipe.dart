class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingridients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingridients);

  static List<Recipe> samples = [
    Recipe('Spaghetti & Meatballs', 'assets/spaghetti.png', 4,
        [Ingredient(1, 'Box', 'Spaghetti')]),
    Recipe('Chocolate Chip Cookies', 'assets/chocolate.png', 4,
        [Ingredient(1, 'Box', 'Spaghetti')]),
    Recipe('Tomato Soup', 'assets/tomato.png', 4,
        [Ingredient(1, 'Box', 'Spaghetti')]),
    Recipe('Grilled Cheese', 'assets/cheese.png', 4,
        [Ingredient(1, 'Box', 'Spaghetti')]),
    Recipe('Pepperoni Pizza', 'assets/pizza.png', 4,
        [Ingredient(1, 'Box', 'Spaghetti')]),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
