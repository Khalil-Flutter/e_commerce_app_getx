import 'package:e_commerce_app_getx/model/category.dart';
import 'package:e_commerce_app_getx/view/home/components/product_card.dart';
import 'package:e_commerce_app_getx/view/home/components/promo_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../model/product_model.dart';
import '../../res/colors/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<List<Product>> selectCategories = [
    all,
    shoes,
    beauty,
    womenFashion,
    jewellery,
    menFashion,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 4,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Location",
                                style: GoogleFonts.sourceSans3(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Iconsax.location,
                                    color: Colors.yellow,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "Karachi,Pakistan",
                                    style: GoogleFonts.sourceSans3(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.whiteColor,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Icon(
                                    Iconsax.arrow_down_1,
                                    size: 17,
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                Colors.white12,
                              ),
                              shape: MaterialStatePropertyAll(
                                ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            padding: const EdgeInsets.all(5),
                            icon: const Icon(
                              Iconsax.shopping_cart5,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                Colors.white12,
                              ),
                              shape: MaterialStatePropertyAll(
                                ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            padding: const EdgeInsets.all(5),
                            icon: const Icon(
                              Iconsax.notification5,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 285,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Iconsax.search_normal,
                                    size: 25,
                                    color: AppColors.primaryColor,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "Search",
                                    style: GoogleFonts.sourceSans3(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Iconsax.scan,
                                    size: 25,
                                    color: AppColors.primaryColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                Colors.white,
                              ),
                              shape: MaterialStatePropertyAll(
                                ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            padding: const EdgeInsets.all(5),
                            icon: const Icon(
                              Iconsax.setting_4,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              const BannerTopText(
                text: "#SpecialForYou",
                seeAll: "See All",
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: PromoSlider(),
              ),
              const BannerTopText(
                text: "Recommended For You",
                seeAll: "See All",
              ),
              categoriesLists(),
              const SizedBox(
                height: 15,
              ),
              if (selectedIndex == 0)
                const SizedBox(
                  height: 15,
                ),
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: selectCategories[selectedIndex].length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: selectCategories[selectedIndex][index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoriesLists() {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.primaryColor
                    : AppColors.whiteColor,
                border: Border.all(
                  color: selectedIndex == index
                      ? AppColors.primaryColor
                      : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    categoriesList[index].title,
                    style: GoogleFonts.sourceSans3(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: selectedIndex == index
                          ? AppColors.whiteColor
                          : AppColors.blackColor,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 10),
      ),
    );
  }
}

class BannerTopText extends StatelessWidget {
  const BannerTopText({
    super.key,
    required this.text,
    required this.seeAll,
  });

  final String text;
  final String seeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text,
            style: GoogleFonts.sourceSans3(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
          Text(
            seeAll,
            style: GoogleFonts.sourceSans3(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
