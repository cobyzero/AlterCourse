import 'package:alter_course/util/const_util.dart';
import 'package:flutter/material.dart';

class RenderBannerItem extends StatelessWidget {
  const RenderBannerItem({
    super.key,
    required this.image,
    required this.title,
    required this.type,
    required this.color,
  });

  final String image;
  final String title;
  final TypeBanner type;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * .6;
    final height = MediaQuery.of(context).size.height * .4;

    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(15),
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            alignment: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            width: width * .5,
            height: height * .12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white.withOpacity(0.4)),
            child: Text(
              getTitle(type),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Flutter Developer".toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  String getTitle(TypeBanner typeBanner) {
    switch (typeBanner) {
      case TypeBanner.newClass:
        return "NEW CLASS";
      case TypeBanner.recommended:
        return "Recomended";
    }
  }
}
