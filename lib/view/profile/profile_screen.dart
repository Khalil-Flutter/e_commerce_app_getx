import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/back_image.jpg",
            fit: BoxFit.cover,
            height: size.height,
            width: size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 9,
              vertical: 20,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  height: size.height * 0.40,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    const CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        "assets/images/avatar.png",
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 15,
                                        width: 15,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromARGB(255, 95, 225, 99),
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border:
                                            Border.all(color: Colors.black54),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 9,
                                        horizontal: 12,
                                      ),
                                      child: const Text(
                                        "ADD FRIEND",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orange,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 12,
                                      ),
                                      child: const Text(
                                        "Follow",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "M.Khalil Ur Rehman",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const SizedBox(
                              child: Text(
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                "A Flutter developer is a software engineer who has proficiency with the Flutter framework to develop mobile, web,",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black12,
                      ),
                      SizedBox(
                        height: size.height * 0.07,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            friendAndMore("FRIENDS", "2318"),
                            friendAndMore("FOLLOWING", "364"),
                            friendAndMore("FOLLOWER", "175"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox friendAndMore(title, number) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black26,
            ),
          ),
          Text(
            number,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
