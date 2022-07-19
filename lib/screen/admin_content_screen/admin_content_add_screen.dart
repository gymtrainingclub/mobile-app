// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../login_screen/login_viewmodel.dart';

class AdminContentAddScreen extends StatefulWidget {
  const AdminContentAddScreen({Key? key}) : super(key: key);
  static const route = '/admin/content/add';

  @override
  State<AdminContentAddScreen> createState() => _AdminContentAddScreenState();
}

class _AdminContentAddScreenState extends State<AdminContentAddScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
          automaticallyImplyLeading: false,
          elevation: 0,
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
        body: stateBody(context, args),
      );
    });
  }

  stateBody(BuildContext context, Map<String, dynamic> args) {
    String menu = args['menu'];
    if (menu == 'add') {
      return _loadedBody(context, args);
    } else if (menu == 'edit') {
      return _loadedBody(context, args);
    } else {
      return _loadedBody(context, args);
    }
  }

  _loadedBody(BuildContext context, Map<String, dynamic> args) {
    final YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: args['video'] ?? 'PQSagzssvUQ',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                args['menu'] == 'add'
                    ? 'Add Content'
                    : args['menu'] == 'edit'
                        ? 'Edit Content'
                        : 'Detail Content',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  width: 16,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    args['menu'] == 'add' ? 'Create Content' : args['category'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (args['menu'] == 'detail') ...[
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Are you sure?'),
                          content: const Text('This action cannot be undone.'),
                          actions: [
                            FlatButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            FlatButton(
                              child: const Text('Delete'),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ]
              ],
            ),
            if (args['menu'] == 'detail') ...[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "${args['title']}",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${args['creator']}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    args['createdAt'],
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  YoutubePlayer(
                    controller: controller,
                    showVideoProgressIndicator: false,
                    progressIndicatorColor: Colors.blueAccent,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "${args['content']}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AdminContentAddScreen.route,
                        arguments: {
                          'menu': 'edit',
                          'id': args['id'],
                          'title': args['title'],
                          'creator': args['creator'],
                          'createdAt': args['createdAt'],
                          'video': args['video'],
                          'content': args['content'],
                          'category': args['category'],
                        },
                      );
                    },
                    color: const Color.fromRGBO(12, 48, 61, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: const Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ] else ...[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Content Title',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    controller: TextEditingController(
                      text: args['title'] ?? '',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Link Video',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    controller: TextEditingController(
                      text: args['video'] ?? '',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Author',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    controller: TextEditingController(
                      text: args['creator'] ?? '',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Descriptions',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLines: 8,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    controller: TextEditingController(
                      text: args['content'] ?? '',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: const Color.fromRGBO(12, 48, 61, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: Text(
                      args['id'] != null ? 'Update' : 'Create',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
