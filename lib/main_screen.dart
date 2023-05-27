import 'package:flutter/material.dart';
import 'package:tec_blog/gen/assets.gen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            //Nav Bar
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Image(
                    image: Image.asset(
                      Assets.images.logo.path,
                    ).image,
                    height: size.height / 13.6,
                  ),
                  const Icon(Icons.search)
                ],
              ),
              //Star Body
              const SizedBox(height: 8),
              Stack(
                children: [
                  Container(
                    width: size.width / 1.15,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              Image.asset(Assets.images.posterTest.path).image,
                          fit: BoxFit.cover),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
