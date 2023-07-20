import 'package:alter_course/infraestructure/presentation/screens/widgets/custom_windows.dart';
import 'package:alter_course/infraestructure/presentation/screens/widgets/render_banner_Item.dart';
import 'package:alter_course/infraestructure/presentation/screens/widgets/render_class_item.dart';
import 'package:alter_course/util/colors_util.dart';
import 'package:alter_course/util/const_util.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWindows(
      color: bgColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            /**
             * ? TITLE
             */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Online \nMaster Class",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                IconButton(
                  onPressed: () => context.go("/"),
                  icon: const Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            /**
             * ? BANNERS
             */
            SizedBox(
              height: MediaQuery.of(context).size.height * .4,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const RenderBannerItem(
                  image: "assets/banner_1.webp",
                  title: "flutter developer",
                  color: Colors.blue,
                  type: TypeBanner.newClass,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            /**
             * ? CLASS
             */
            const Text(
              "Free online class",
              style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const RenderClassItem(
                  image: "assets/flutter_class.jpeg",
                  title: "Flutter Developer",
                  hours: 8,
                  students: 890,
                );
              },
            ))
          ]),
    );
  }
}
