// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mobileapp/screen/membership_register_screen/membership_register_screen.dart';

class MembershipDetailScreen extends StatefulWidget {
  const MembershipDetailScreen({Key? key}) : super(key: key);
  static const String route = '/membership_detail';

  @override
  State<MembershipDetailScreen> createState() => _MembershipDetailScreenState();
}

class _MembershipDetailScreenState extends State<MembershipDetailScreen> {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Membership Detail',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, '/membership_detail'),
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
                      image: const DecorationImage(
                        image: AssetImage('assets/card/Platinum.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          children: const [
                            Text(
                              'PLATINUM MEMBER',
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
                              '00000001',
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
                            const Text(
                              'Muhammad Ibnu',
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
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Platinum Membership',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  'Platinum Membership is a membership card that gives you access to all the benefits of the membership. It is a great way to get started with the membership program. You can also use Platinum Membership to upgrade your existing membership to Gold Membership. ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Benefits',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('- Access to all the benefits of the membership.'),
              const Text(
                  '- Content and services that are exclusive to Platinum Membership.'),
              const Text('- Discounts on all our products.'),
              const Text('- Access to our exclusive events.'),
              const Text('- Access to our exclusive membership program.'),
              const SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MembershipRegisterScreen.route);
                },
                child: const Text('Join Now'),
              ),
              RaisedButton(
                onPressed: () {},
                child: const Text('Upgrade Membership'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
