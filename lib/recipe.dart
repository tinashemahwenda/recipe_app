class Recipe {
  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl);

  static List<Recipe> samples = [
    Recipe('Spaghetti & Meatballs', 'assets/spagheti.jpg'),
    Recipe('Chocolate Chip Cookies', 'assets/chocolate.jpg'),
    Recipe('Tomato Soup', 'assets/tomato.jpg'),
    Recipe('Grilled Cheese', 'assets/cheese.jpg'),
    Recipe('Pepperoni Pizza', 'assets/pizza.jpg'),
  ];
}
