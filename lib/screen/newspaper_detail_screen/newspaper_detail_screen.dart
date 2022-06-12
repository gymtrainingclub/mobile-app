import 'package:flutter/material.dart';

class NewspaperDetailScreen extends StatefulWidget {
  const NewspaperDetailScreen({Key? key}) : super(key: key);
  static const String route = '/newspaper_detail';

  @override
  State<NewspaperDetailScreen> createState() => _NewspaperDetailScreenState();
}

class _NewspaperDetailScreenState extends State<NewspaperDetailScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                'Tips Workout',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    'Menjaga Kebersihan dan Kesehatan Tubuh dengan Olahraga',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '5 hours ago',
                    style: TextStyle(fontSize: 10),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Jika Anda termasuk seorang pemula yang menjalani sebuah latihan fisik atau yang lebih dikenal dengan istilah workout, perlu diingat bahwa sangatlah penting untuk memahami diri sendiri terlebih dahulu. Karena dengan memahami diri sendiri, secara tak langsung itu menjadi nasihat terbaik bagi diri Anda.',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Jika Anda dapat membaca apa kebutuhan diri, Anda akan mengetahui ketika saat sedang tidak cukup makan, saat berat badan terasa mulai berlebihan, ketika Anda memerlukan istirahat yang cukup, atau bahkan ketika tubuh Anda membutuhkan latihan yang lebih keras.',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Bagian yang menyenangkan dari berolahraga adalah menemukan pemahaman yang lebih baik tentang tubuh Anda. Untuk mendapatkan hasil maksimal dari latihan gym atau workout Anda, berikut adalah 4 tips untuk pemula.',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'By: John Doe',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
