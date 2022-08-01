import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app/application/providers/body_parts_provider.dart';
import 'package:training_app/domain/entities/body_part.dart';
import 'package:training_app/ui/widgets/body_part_widget.dart';

class HomeBodyParts extends StatelessWidget {
  const HomeBodyParts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BodyPartsProvider>(
        builder: (context, bodyPartsProvider, child) {
      List<BodyPartWidget> newList = [];
      for (int i = 0; i < bodyPartsProvider.parts.length; i++) {
        newList.add(
          BodyPartWidget(
            bodyPart: BodyPart(
              name: bodyPartsProvider.parts[i].name,
              imageAsset: bodyPartsProvider.parts[i].imageAsset,
              exercises: bodyPartsProvider.parts[i].exercises,
            ),
            exerciseImageAssets: bodyPartsProvider.parts[i].exercises!
                .map((e) => Image.asset(e.imageAsset))
                .toList(), // How TF This works?
          ), // FIX THIS SHITTTT
        );
      }
      return Expanded(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .3,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.03),
            child: CarouselSlider(
              items: newList,
              options: CarouselOptions(
                aspectRatio: 9 / 16,
                viewportFraction: 0.4,
                initialPage: 0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
      );
    });
  }
}
