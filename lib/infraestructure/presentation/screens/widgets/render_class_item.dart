import 'package:alter_course/util/colors_util.dart';
import 'package:flutter/material.dart';

class RenderClassItem extends StatelessWidget {
  const RenderClassItem(
      {super.key,
      required this.image,
      required this.title,
      required this.hours,
      required this.students});

  final String image;
  final String title;
  final int hours;
  final int students;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height * .1;
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(4),
      width: width,
      height: height,
      decoration: BoxDecoration(color: classColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: width * .3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "$hours Hours",
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "$students students",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_circle),
            color: Colors.white,
            iconSize: 40,
          )
        ],
      ),
    );
  }
}
