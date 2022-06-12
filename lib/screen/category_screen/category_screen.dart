import 'package:flutter/material.dart';
import 'package:mobileapp/screen/class_screen/class_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);
  static const String route = '/category';

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 14,
            ),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 228,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/category/category.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  'Class',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  Text(
                    'Cardio Classes',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Memenuhi ruangan dengan semangat! Selain mampu memperbaiki fungsi tubuh dan membakar kalori, kelas cardio juga bermanfaat memperbaiki denyut jantung, tekanan darah, dan pernapasan tubuh.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Classes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return classCard(
                            icon: 'assets/icon/strength.png',
                            title: 'Booty Shaping',
                            image: 'assets/class/booty_sharping.png',
                            instructor: 'Kenny S. Jones',
                            time: '60 Min',
                            location: 'Gym 1 Darmstadt Surabaya',
                            category: 'Strength',
                          );
                        },
                        itemCount: 10,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget classCard(
      {required String icon,
      required String title,
      required String image,
      required String instructor,
      required String time,
      required String location,
      required String category}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ClassScreen.route);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        height: 240,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          border: Border.all(
            color: Colors.black.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage(
                    icon,
                  ),
                ),
                Text(
                  category,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'By $instructor',
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Text(
                    time,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
