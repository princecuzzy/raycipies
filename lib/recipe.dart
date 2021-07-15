class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.imageUrl, this.label, this.servings, this.ingredients);

  static List<Recipe> foodSamples = [
    Recipe('assets/amala.jpg', 'amala', 4,
        [Ingredient('cup', 'yam powder', 3), Ingredient('slizes', 'ponmo', 2)]),
    Recipe('assets/egwusi_soup.jpg', 'egwusi', 2,
        [Ingredient('cup', 'melon seed', 4), Ingredient('cup', 'palm oil', 2)]),
    Recipe('assets/fried_rice.jpg', 'fried rice', 3,
        [Ingredient('mudu', 'rice crop', 1), Ingredient('kilo', 'chicken', 1)]),
    Recipe('assets/moi_moi.jpg', 'moi moi', 6,
        [Ingredient('derica', 'beans', 2), Ingredient('crate', 'egg', 1)]),
    Recipe('assets/okro_soup.jpg', 'okro soup', 2,
        [Ingredient('cup', 'okro vegetable', 6)]),
    Recipe('assets/snail_soup.jpg', 'snail soup', 5,
        [Ingredient('mudu', 'snail', 4)]),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.measure, this.name, this.quantity);
}
