// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SplashWidget extends StatefulWidget {
  int index;
  int currentPage;
  SplashWidget({Key? key, required this.index, required this.currentPage})
      : super(key: key);

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  List<Map> splashword = [
    {
      'title': 'Fitnes & GYM \nit is Lifestyle',
      'subtitle':
          '"Fitnes adalah sebuah gaya hidup saat ini yang sangatlah populer untuk menjaga kesehatan tubuh."',
    },
    {
      'title': 'Workout \nAnywhere',
      'subtitle':
          '"Lakukan GYM anda di mana saja dan kapan saja. Kami siap membantu anda."',
    },
    {
      'title': 'Stay Strong \nand Healthy',
      'subtitle':
          'Tetaplah kuat dan sehat di setiap saat. Dengan lakukan GYM anda akan lebih baik.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Text(
                  '${splashword[widget.index]['title']}',
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '${splashword[widget.index]['subtitle']}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
