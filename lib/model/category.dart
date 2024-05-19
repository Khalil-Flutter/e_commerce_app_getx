class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categoriesList = [
  Category(
    title: "All",
    image: "assets/images/category_images/all.png",
  ),
  Category(
    title: "Shoes",
    image: "assets/images/category_images/shoes.png",
  ),
  Category(
    title: "Beauty",
    image: "assets/images/category_images/beauty.png",
  ),
  Category(
    title: "Women's Fashion",
    image: "assets/images/category_images/women's_fashion.png",
  ),
  Category(
    title: "Jewellery",
    image: "assets/images/category_images/jewellery.png",
  ),
  Category(
    title: "Men's Fashion",
    image: "assets/images/category_images/mens_fashion.png",
  ),
];
