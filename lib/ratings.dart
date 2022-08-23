import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Ratingsss extends StatefulWidget {
  const Ratingsss({Key? key}) : super(key: key);

  @override
  State<Ratingsss> createState() => _RatingsssState();
}

class _RatingsssState extends State<Ratingsss> {
  static List<double> initialRating = [2, 4, 3.5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Star Ratings"),
        ),
        body: PageView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "assets/images/1250305.jpg",
                    fit: BoxFit.fill,
                    gaplessPlayback: true,
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: SmoothStarRating(
                        size: 40,
                        color: Colors.yellow,
                        borderColor: Colors.black,
                        rating: initialRating[index],
                        onRated: (double value) {},
                      ))
                ],
              );
            }));
  }
}
