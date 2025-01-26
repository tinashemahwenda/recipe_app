class Recipe {
  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl);

  static List<Recipe> samples = [
    Recipe('Spaghetti & Meatballs', 'assets/spaghetti.png'),
    Recipe('Chocolate Chip Cookies', 'assets/chocolate.png'),
    Recipe('Tomato Soup', 'assets/tomato.png'),
    Recipe('Grilled Cheese', 'assets/cheese.png'),
    Recipe('Pepperoni Pizza', 'assets/pizza.png'),
  ];
}
