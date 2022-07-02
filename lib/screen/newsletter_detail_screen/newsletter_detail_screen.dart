// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/newsletter_detail_screen/newsletter_detail_viewmodel.dart';
import 'package:provider/provider.dart';

import '../login_screen/login_viewmodel.dart';

class NewsletterDetailScreen extends StatefulWidget {
  const NewsletterDetailScreen({Key? key}) : super(key: key);
  static const String route = '/newspaper_detail';

  @override
  State<NewsletterDetailScreen> createState() => _NewsletterDetailScreenState();
}

class _NewsletterDetailScreenState extends State<NewsletterDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final newsletterDetailProvider =
        Provider.of<NewsletterDetailViewModel>(context, listen: false);
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    newsletterDetailProvider.getNewsletterGetByIdResponse(args['id']);
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
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
        body: stateBody(context, args),
      );
    });
  }

  stateBody(BuildContext context, Map<String, dynamic> args) {
    final newsletterDetailProvider =
        Provider.of<NewsletterDetailViewModel>(context);
    final isLoading =
        newsletterDetailProvider.state == NewsletterDetailViewState.loading;
    final isLoaded =
        newsletterDetailProvider.state == NewsletterDetailViewState.loaded;
    final isError =
        newsletterDetailProvider.state == NewsletterDetailViewState.error;
    final isInitial =
        newsletterDetailProvider.state == NewsletterDetailViewState.initial;
    if (isInitial) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text('Loading...'),
          ],
        ),
      );
    } else if (isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text('Loading... Loading...'),
          ],
        ),
      );
    } else if (isLoaded) {
      return _loadedBody(context, newsletterDetailProvider, args);
    } else if (isError) {
      return Center(
        child: Text('Error'),
      );
    } else {
      return Center(
        child: Text('Unknown'),
      );
    }
  }

  _loadedBody(
      BuildContext context,
      NewsletterDetailViewModel newsletterDetailProvider,
      Map<String, dynamic> args) {
    return SingleChildScrollView(
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
            child: Text(
              '${args['category']}',
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
              children: [
                Text(
                  '${args['title']} | ${args['id']}',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${args['author']}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '${args['date']}',
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '${args['content']}',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
