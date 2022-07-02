// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/class_screen/class_screen.dart';
import 'package:provider/provider.dart';

import '../login_screen/login_viewmodel.dart';
import 'category_viewmodel.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);
  static const String route = '/category';

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryViewModel>(context);
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    if (categoryProvider.state == CategoryViewState.loaded) {
      if (args['id'] != categoryProvider.categoryGetByIdResponse.data?.id) {
        categoryProvider.state = CategoryViewState.initial;
      }
    }
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
        body: stateBody(context),
      );
    });
  }

  stateBody(BuildContext context) {
    final categoryProvider = Provider.of<CategoryViewModel>(context);
    final isLoading = categoryProvider.state == CategoryViewState.loading;
    final isLoaded = categoryProvider.state == CategoryViewState.loaded;
    final isError = categoryProvider.state == CategoryViewState.error;
    final isInitial = categoryProvider.state == CategoryViewState.initial;
    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (isLoaded) {
      return _loadedBody(context, categoryProvider);
    } else if (isError) {
      return Center(
        child: Text('Error'),
      );
    } else if (isInitial) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            const SizedBox(height: 10),
            Text('Loading...It will take few seconds'),
          ],
        ),
      );
    } else {
      return Center(
        child: Text('Unknown'),
      );
    }
  }

  _loadedBody(BuildContext context, CategoryViewModel categoryProvider) {
    return SingleChildScrollView(
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
            child: Center(
              child: Text(
                '${categoryProvider.categoryGetByIdResponse.data?.name}',
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
              children: [
                Text(
                  '${categoryProvider.categoryGetByIdResponse.data?.name} Class',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '${categoryProvider.categoryGetByIdResponse.data?.description}',
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
          classCategory(context, categoryProvider),
        ],
      ),
    );
  }

  classCategory(BuildContext context, CategoryViewModel categoryProvider) {
    int? classCount = categoryProvider.classGetResponse.data?.length;
    bool kurangClass = classCount == null || classCount == 0 ? false : true;
    if (classCount! < 2) {
      classCount = 3;
      kurangClass = true;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          for (int i = 0; i < classCount; i++)
            if (kurangClass == true)
              classCardItem(context, categoryProvider, 0, kurangClass)
            else
              classCardItem(context, categoryProvider, i, kurangClass),
        ],
      ),
    );
  }

  classCardItem(BuildContext context, CategoryViewModel categoryProvider,
      int index, bool kurangClass) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ClassScreen.route, arguments: {
          'id': categoryProvider.classGetResponse.data![index].id,
        });
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
            image: AssetImage(
              'assets/class/zumba.png',
            ),
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
                    'assets/icon/cardio.png',
                  ),
                ),
                Text(
                  '${categoryProvider.classGetResponse.data![index].category?.name}',
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
                  '${categoryProvider.classGetResponse.data![index].name}',
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Text(
                  '${categoryProvider.classGetResponse.data![index].location}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'By ${categoryProvider.classGetResponse.data![index].instructor?.name}',
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
                    '${categoryProvider.classGetResponse.data![index].duration} min',
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
