// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../admin_newsletter_screen/admin_newsletter_screen.dart';
import '../login_screen/login_viewmodel.dart';
import 'admin_content_add_screen.dart';

class AdminContentScreen extends StatefulWidget {
  const AdminContentScreen({Key? key}) : super(key: key);
  static const String route = '/admin_content';

  @override
  State<AdminContentScreen> createState() => _AdminContentScreenState();
}

class _AdminContentScreenState extends State<AdminContentScreen> {
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
            'Content',
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
                      AdminContentAddScreen.route,
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
    final YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: 'PQSagzssvUQ',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return ListTile(
      title: Text(
        'How to make a body builder workout $index',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Daniel Karan',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: false,
            progressIndicatorColor: Colors.blueAccent,
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.navigate_next,
          size: 30,
        ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            AdminContentAddScreen.route,
            arguments: {
              'id': '$index',
              'title': 'How to make a body builder workout $index',
              'createdAt': '5 days ago',
              'creator': 'Daniel Karan',
              'category': 'Lifestyle',
              'video': 'PQSagzssvUQ',
              'content':
                  'Bagaimana membuat otot ABS dengan rutin dan konsisten dengan mengikuti step dari coach Agus. \n\n Doing targeted exercises like crunches is great for toning abdominal muscles, but losing both subcutaneous and visceral fat is the first step to unearthing your abs. According to the American Council on Exercise (ACE), you\'ll need to lower your body fat to about 14 to 20 percent for women and 6 to 13 percent for men. ',
              'menu': 'detail',
            },
          );
        },
      ),
    );
  }
}
