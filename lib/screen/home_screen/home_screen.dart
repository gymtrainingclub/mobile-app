// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/category_screen/category_screen.dart';
import 'package:mobileapp/screen/my_membership_screen/my_membership_screen.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../class_screen/class_screen.dart';
import '../login_screen/login_viewmodel.dart';
import 'home_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String route = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeViewModel>(context);
    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.info,
                color: Colors.black87,
                size: 18,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
        body: stateBody(context, homeProvider),
        bottomNavigationBar: BottomNavigationWidget(
          index: 0,
          role: loginProvider.role,
        ),
      );
    });
  }

  stateBody(BuildContext context, HomeViewModel homeProvider) {
    final isLoading = homeProvider.state == HomeViewState.loading;
    final isError = homeProvider.state == HomeViewState.error;
    final isLoaded = homeProvider.state == HomeViewState.loaded;
    final isInitial = homeProvider.state == HomeViewState.initial;
    print('homeProvider.state: ${homeProvider.state}');
    print('getprofile: ${homeProvider.profileGetResponse.data?.name}');
    print('getcategory: ${homeProvider.categoryGetResponse.data?.length}');
    print('getclass: ${homeProvider.classGetResponse.data?.length}');
    if (isLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Text('Loading... progress'),
          ],
        ),
      );
    } else if (isError) {
      return Center(
        child: Text('Error'),
      );
    }
    if (isLoaded) {
      return Scaffold(
        body: Center(
          child: _loadedBody(context, homeProvider),
        ),
      );
    } else if (isInitial) {
      Timer(
        const Duration(seconds: 3),
        () => homeProvider.getHomeGetResponse(),
      );
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Text('Loading...It will take few seconds'),
            ],
          ),
        ),
      );
    } else {
      return Center(
        child: Text('Unknown'),
      );
    }
  }

  Widget _loadedBody(BuildContext context, HomeViewModel homeProvider) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  // bottomLeft: Radius.circular(40),
                  // bottomRight: Radius.circular(40),
                  ),
              color: Color.fromRGBO(18, 106, 138, 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                helloWidget(context, homeProvider),
                const SizedBox(
                  height: 20,
                ),
                membershipCard(context, homeProvider),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Category',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
                listCategory(context, homeProvider),
                const Center(
                  child: Text(
                    '"The is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Classes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                listClass(context, homeProvider),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listClass(BuildContext context, HomeViewModel homeProvider) {
    int? jumclass = homeProvider.classGetResponse.data?.length;
    bool kurang = false;
    if (jumclass! < 2) {
      jumclass = 5;
      kurang = true;
    }

    return Column(
      children: <Widget>[
        for (var i = 0; i < jumclass; i++)
          if (kurang)
            classCard(
              icon: 'assets/icon/strength.png',
              title: '${homeProvider.classGetResponse.data![0].name}',
              image: '${homeProvider.classGetResponse.data![0].image}',
              instructor:
                  '${homeProvider.classGetResponse.data![0].instructor?.name}',
              time: '${homeProvider.classGetResponse.data![0].duration} Min',
              location: '${homeProvider.classGetResponse.data![0].location}',
              category:
                  '${homeProvider.classGetResponse.data![0].category?.name}',
            )
          else
            classCard(
              icon: 'assets/icon/strength.png',
              title: '${homeProvider.classGetResponse.data![i].name}',
              image: 'assets/class/booty_sharping.png',
              instructor: 'Kenny S. Jones',
              time: '60 Min',
              location: 'Gym 1 Darmstadt Surabaya',
              category: 'Strength',
            )
      ],
    );
  }

  Container listCategory(BuildContext context, HomeViewModel homeProvider) {
    int? category = homeProvider.categoryGetResponse.data?.length;
    bool kurang = false;
    if (category! < 2) {
      category = 3;
      kurang = true;
    }
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 150.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          int i = index;
          return Container(
            margin: EdgeInsets.only(right: 16),
            child: listItemCategory(context, homeProvider, i, kurang),
          );
        },
        itemCount: category,
      ),
    );
  }

  Widget listItemCategory(
      BuildContext context, HomeViewModel homeProvider, int i, bool kurang) {
    if (kurang) {
      i = 0;
    }
    return GestureDetector(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/icon/cardio.png',
              height: 40,
            ),
            Text(
              '${homeProvider.categoryGetResponse.data![i].name}',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Center membershipCard(BuildContext context, HomeViewModel homeProvider) {
    int? id = homeProvider.profileGetResponse.data?.member?.id;
    String image = 'assets/card/Platinum.png';
    String? name = homeProvider.profileGetResponse.data?.member?.name;
    if (id == 1) {
      image = 'assets/card/Bronze.png';
    } else if (id == 2) {
      image = 'assets/card/Silver.png';
    } else if (id == 3) {
      image = 'assets/card/Gold.png';
    } else if (id == 4) {
      image = 'assets/card/Platinum.png';
    } else {
      image = 'assets/card/Free.png';
    }
    return Center(
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(
          MyMembershipScreen.route,
        ),
        child: Container(
          height: 200,
          padding: const EdgeInsets.all(16.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
              color: const Color.fromRGBO(217, 217, 217, 1),
              width: 1,
            ),
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
                children: [
                  const Text(
                    'Membership Card',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${name?.toUpperCase()} MEMBER',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '${homeProvider.profileGetResponse.data?.id.toString().padLeft(9, '0')}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${homeProvider.profileGetResponse.data?.name}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        'exp',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '12/23',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row helloWidget(BuildContext context, HomeViewModel homeProvider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello,',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '${homeProvider.profileGetResponse.data?.name}',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Image.asset(
          'assets/icon/notification.png',
          width: 80,
          height: 80,
        ),
      ],
    );
  }

  Widget classCard({
    required String image,
    required String icon,
    required String title,
    required String category,
    required String location,
    required String instructor,
    required String time,
  }) {
    DecorationImage imageWidget = DecorationImage(
      image: AssetImage(image),
      fit: BoxFit.cover,
    );
    if (image
        .contains('https://cdn-icons-png.flaticon.com/512/2860/2860977.png')) {
      imageWidget = DecorationImage(
        image: AssetImage('assets/class/zumba.png'),
        fit: BoxFit.cover,
      );
    } else {
      imageWidget = DecorationImage(
        image: Image.network(image).image,
        fit: BoxFit.cover,
      );
    }
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
          image: imageWidget,
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
