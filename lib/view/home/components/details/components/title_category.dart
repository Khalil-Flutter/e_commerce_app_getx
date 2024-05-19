import 'package:flutter/material.dart';

import '../../../../../model/product_model.dart';

class TitleCategory extends StatelessWidget {
  const TitleCategory({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${product.title} ${product.category}",
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
