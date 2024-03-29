// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:mobileapp/screen/home_screen/home_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../category_screen/category_screen.dart';
import '../login_screen/login_viewmodel.dart';
import '../newsletter_detail_screen/newsletter_detail_screen.dart';
import 'newsletter_viewmodel.dart';

class NewsletterScreen extends StatefulWidget {
  const NewsletterScreen({Key? key}) : super(key: key);
  static const String route = '/newsletter';

  @override
  State<NewsletterScreen> createState() => _NewsletterScreenState();
}

class _NewsletterScreenState extends State<NewsletterScreen> {
  @override
  Widget build(BuildContext context) {
    final newsletterProvider =
        Provider.of<NewsletterViewModel>(context, listen: false);
    newsletterProvider.getHomeGetResponse();
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      int index = 2;
      if (loginProvider.role == 'admin') {
        index = 3;
      } else if (loginProvider.role == 'member' ||
          loginProvider.role == 'operator') {
        index = 2;
      }

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
        body: stateBody(context),
        bottomNavigationBar: BottomNavigationWidget(
          index: index,
          role: loginProvider.role,
        ),
      );
    });
  }

  stateBody(BuildContext context) {
    final newsletterProvider = Provider.of<NewsletterViewModel>(context);
    final isLoading = newsletterProvider.state == HomeViewState.loading;
    final isError = newsletterProvider.state == HomeViewState.error;
    final isLoaded = newsletterProvider.state == HomeViewState.loaded;
    final isInitial = newsletterProvider.state == HomeViewState.initial;
    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (isError) {
      return Center(
        child: Text('Error'),
      );
    } else if (isLoaded) {
      return Center(child: Text('Loaded'));
    } else if (isInitial) {
      return Center(
        child: _initialBody(context, newsletterProvider),
      );
    } else {
      return _initialBody(context, newsletterProvider);
    }
  }

  _initialBody(BuildContext context, NewsletterViewModel newsletterProvider) {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
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
              'News',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Text(
            'Category',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        listCategory(context),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Text(
            'Latest News',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: _buildList(context, newsletterProvider),
        ),
      ],
    );
  }

  Container listCategory(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 150.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, CategoryScreen.route);
            },
            child: Container(
              width: 240.0,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                border: Border.all(
                  color: Colors.black.withOpacity(0.2),
                ),
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage('assets/category/bg_cardio.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  'Cardio',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Container(
            width: 240.0,
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                image: AssetImage('assets/category/bg_bodyandmind.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: Text(
                'Body & Mind',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Container(
            width: 240.0,
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                image: AssetImage('assets/category/bg_strength.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: Text(
                'Strength',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildList(
      BuildContext context, NewsletterViewModel newsletterProvider) {
    return Column(
      children: <Widget>[
        for (var i = 0; i < 10; i++)
          if (i % 2 == 0) ...[
            _contentA(context, newsletterProvider, i)
          ] else ...[
            _contentB(context, newsletterProvider, i),
          ]
      ],
    );
  }

  _contentA(
      BuildContext context, NewsletterViewModel newsletterProvider, int i) {
    String? date = newsletterProvider.newsletterGetResponse.data?[0].updatedAt;
    Jiffy jiffy = Jiffy(date);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, NewsletterDetailScreen.route, arguments: {
          'id': newsletterProvider.newsletterGetResponse.data![0].id,
          'index': i,
          'image': newsletterProvider.newsletterGetResponse.data![0].image,
          'title': newsletterProvider.newsletterGetResponse.data![0].title,
          'date': jiffy.fromNow(),
          'content':
              "Jika Anda termasuk seorang pemula yang menjalani sebuah latihan fisik atau yang lebih dikenal dengan istilah workout, perlu diingat bahwa sangatlah penting untuk memahami diri sendiri terlebih dahulu. Karena dengan memahami diri sendiri, secara tak langsung itu menjadi nasihat terbaik bagi diri Anda.\n \n Jika Anda dapat membaca apa kebutuhan diri, Anda akan mengetahui ketika saat sedang tidak cukup makan, saat berat badan terasa mulai berlebihan, ketika Anda memerlukan istirahat yang cukup, atau bahkan ketika tubuh Anda membutuhkan latihan yang lebih keras. \n \n Bagian yang menyenangkan dari berolahraga adalah menemukan pemahaman yang lebih baik tentang tubuh Anda. Untuk mendapatkan hasil maksimal dari latihan gym atau workout Anda, berikut adalah 4 tips untuk pemula. ",
          'author': 'Admin Gym',
          'category': 'Cardio',
        });
      },
      child: Container(
        height: 124,
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black.withOpacity(0.2),
            width: 0.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 124,
              width: MediaQuery.of(context).size.width * 0.35,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/category/bg_cardio.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${newsletterProvider.newsletterGetResponse.data?[0].title ?? '-'} $i',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(12, 48, 61, 1),
                      ),
                    ),
                    Text(
                      jiffy.fromNow(),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _contentB(
      BuildContext context, NewsletterViewModel newsletterProvider, int i) {
    String? date = newsletterProvider.newsletterGetResponse.data?[0].updatedAt;
    Jiffy jiffy = Jiffy(date);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          NewsletterDetailScreen.route,
          arguments: {
            'id': newsletterProvider.newsletterGetResponse.data![0].id,
            'index': i,
            'image': newsletterProvider.newsletterGetResponse.data![0].image,
            'title': newsletterProvider.newsletterGetResponse.data![0].title,
            'date': jiffy.fromNow(),
            'content':
                "Jika Anda termasuk seorang pemula yang menjalani sebuah latihan fisik atau yang lebih dikenal dengan istilah workout, perlu diingat bahwa sangatlah penting untuk memahami diri sendiri terlebih dahulu. Karena dengan memahami diri sendiri, secara tak langsung itu menjadi nasihat terbaik bagi diri Anda. \n \n Jika Anda dapat membaca apa kebutuhan diri, Anda akan mengetahui ketika saat sedang tidak cukup makan, saat berat badan terasa mulai berlebihan, ketika Anda memerlukan istirahat yang cukup, atau bahkan ketika tubuh Anda membutuhkan latihan yang lebih keras. \n \n Bagian yang menyenangkan dari berolahraga adalah menemukan pemahaman yang lebih baik tentang tubuh Anda. Untuk mendapatkan hasil maksimal dari latihan gym atau workout Anda, berikut adalah 4 tips untuk pemula. ",
            'author': 'Admin Gym',
            'category': 'Strength',
          },
        );
      },
      child: Container(
        height: 124,
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black.withOpacity(0.2),
            width: 0.5,
          ),
          image: const DecorationImage(
            image: AssetImage('assets/category/bg_bodyandmind.png'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.50,
                      alignment: Alignment.topLeft,
                      child: Text(
                        '${newsletterProvider.newsletterGetResponse.data?[0].title ?? 'Title'} $i',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        jiffy.fromNow(),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
