// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../admin_content_screen/admin_content_screen.dart';
import '../login_screen/login_viewmodel.dart';
import 'admin_newsletter_add_screen.dart';

class AdminNewsletterScreen extends StatefulWidget {
  const AdminNewsletterScreen({Key? key}) : super(key: key);
  static const route = '/admin/newsletter';

  @override
  State<AdminNewsletterScreen> createState() => _AdminNewsletterScreenState();
}

class _AdminNewsletterScreenState extends State<AdminNewsletterScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    String menu = args['menu'] == 'newsletter' ? 'newsletter' : 'content';

    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Text(
                'Cleo Zambrano',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/300',
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: stateBody(context, loginProvider, menu),
        bottomNavigationBar: BottomNavigationWidget(
          index: 2,
          role: loginProvider.role,
        ),
      );
    });
  }

  stateBody(BuildContext context, LoginViewModel loginProvider, String menu) =>
      loadedBody(context, loginProvider, menu);

  loadedBody(BuildContext context, LoginViewModel loginProvider, String menu) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Newsletter',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AdminNewsletterScreen.route,
                        arguments: {
                          'menu': 'newsletter',
                        },
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      shadowColor: Colors.black,
                      child: Container(
                        height: 90,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: menu == 'newsletter'
                              ? const Color.fromRGBO(12, 48, 61, 1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.newspaper,
                              color: menu == 'newsletter'
                                  ? Colors.white
                                  : const Color.fromRGBO(12, 48, 61, 1),
                              size: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Newsletters',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: menu == 'newsletter'
                                    ? Colors.white
                                    : const Color.fromRGBO(12, 48, 61, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AdminContentScreen.route,
                        arguments: {
                          'menu': 'content',
                        },
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      shadowColor: Colors.black,
                      child: Container(
                        height: 90,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: menu == 'content'
                              ? const Color.fromRGBO(12, 48, 61, 1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.card_membership,
                              color: menu == 'content'
                                  ? Colors.white
                                  : const Color.fromRGBO(12, 48, 61, 1),
                              size: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Content',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: menu == 'content'
                                    ? Colors.white
                                    : const Color.fromRGBO(12, 48, 61, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.grey,
            height: 1.5,
          ),
          const SizedBox(
            height: 20,
          ),
          _menuSwitch(menu),
        ],
      ),
    );
  }

  _menuSwitch(String menu) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  menu == 'newsletter' ? 'Newsletter List' : 'Content List',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AdminNewsletterAddScreen.route,
                      arguments: {
                        'menu': 'add',
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
              height: 1.5,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(12, 48, 61, 1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Expanded(
                    child: Row(
                      children: [
                        RaisedButton(
                          padding: const EdgeInsets.all(4),
                          color: const Color.fromRGBO(241, 90, 36, 1),
                          onPressed: () {},
                          child: const Text(
                            'Lifestyle',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.all(4),
                          onPressed: () {},
                          color: const Color.fromRGBO(12, 48, 61, 1),
                          child: const Text(
                            'Gym News',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.all(4),
                          onPressed: () {},
                          color: const Color.fromRGBO(12, 48, 61, 1),
                          child: const Text(
                            'Tips Workout',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.all(4),
                          onPressed: () {},
                          color: const Color.fromRGBO(12, 48, 61, 1),
                          child: const Text(
                            'Diet',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                  ),
                  child: const Text('Search'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            for (var i = 0; i < 10; i++) _newsletterList(menu, i),
          ],
        ),
      ),
    );
  }

  _newsletterList(String menu, int index) {
    return ListTile(
      title: Text(
        'Lifestyle ${index + 1}',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Daniel Karan ${index + 1}',
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.navigate_next,
          size: 30,
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            AdminNewsletterAddScreen.route,
            arguments: {
              'id': '$index',
              'title': 'Lifestyle Monthly With Daniel Karan',
              'createdAt': '5 days ago',
              'creator': 'Daniel Karan',
              'category': 'Lifestyle',
              'image': 'https://picsum.photos/200/300?image=${index + 1}',
              'content':
                  'Jika Anda termasuk seorang pemula yang menjalani sebuah latihan fisik atau yang lebih dikenal dengan istilah workout, perlu diingat bahwa sangatlah penting untuk memahami diri sendiri terlebih dahulu. Karena dengan memahami diri sendiri, secara tak langsung itu menjadi nasihat terbaik bagi diri Anda. \n\n Jika Anda dapat membaca apa kebutuhan diri, Anda akan mengetahui ketika saat sedang tidak cukup makan, saat berat badan terasa mulai berlebihan, ketika Anda memerlukan istirahat yang cukup, atau bahkan ketika tubuh Anda membutuhkan latihan yang lebih keras. \n\n Bagian yang menyenangkan dari berolahraga adalah menemukan pemahaman yang lebih baik tentang tubuh Anda. Untuk mendapatkan hasil maksimal dari latihan gym atau workout Anda, berikut adalah 4 tips untuk pemula. \n\n Jika Anda dapat membaca apa kebutuhan diri, Anda akan mengetahui ketika saat sedang tidak cukup makan, saat berat badan terasa mulai berlebihan, ketika Anda memerlukan istirahat yang cukup, atau bahkan ketika tubuh Anda membutuhkan latihan yang lebih keras.',
              'menu': 'detail',
            },
          );
        },
      ),
    );
  }
}
