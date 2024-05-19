import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../model/product_model.dart';
import '../../../../../res/colors/app_colors.dart';

class SellerInfo extends StatelessWidget {
  const SellerInfo({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Seller",
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/avatar.png"),
              ),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.seller,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Manager",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[200]),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.message5,
                    color: AppColors.primaryColor,
                  )),
              IconButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                ),
                onPressed: () {},
                icon: Icon(
                  Iconsax.call5,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
