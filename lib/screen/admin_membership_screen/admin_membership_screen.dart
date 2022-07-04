// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:mobileapp/screen/admin_membership_screen/admin_membership_detail_screen.dart';
import 'package:provider/provider.dart';

import '../../widget/bottom_navigation_widget.dart';
import '../login_screen/login_viewmodel.dart';
import 'admin_membership_viewmodel.dart';

class AdminMembershipScreen extends StatefulWidget {
  const AdminMembershipScreen({Key? key}) : super(key: key);
  static const String route = '/admin_membership';

  @override
  State<AdminMembershipScreen> createState() => _AdminMembershipScreenState();
}

class _AdminMembershipScreenState extends State<AdminMembershipScreen> {
  @override
  Widget build(BuildContext context) {
    final adminMembershipProvider = Provider.of<AdminMembershipViewModel>(
      context,
      listen: false,
    );

    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    String menu = args['menu'] == 'membership' ? 'membership' : 'history';

    return Consumer(builder: (context, LoginViewModel loginProvider, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(12, 48, 61, 1),
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
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
          Text(
            'Membership',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          SizedBox(
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
                        AdminMembershipScreen.route,
                        arguments: {
                          'menu': 'membership',
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
                          color: menu == 'membership'
                              ? const Color.fromRGBO(12, 48, 61, 1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.folder,
                              color: menu == 'membership'
                                  ? Colors.white
                                  : const Color.fromRGBO(12, 48, 61, 1),
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Membership',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: menu == 'membership'
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
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AdminMembershipScreen.route,
                        arguments: {
                          'menu': 'history',
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
                          color: menu == 'history'
                              ? const Color.fromRGBO(12, 48, 61, 1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.history,
                              color: menu == 'history'
                                  ? Colors.white
                                  : const Color.fromRGBO(12, 48, 61, 1),
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'History Payment',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: menu == 'history'
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
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey,
            height: 1.5,
          ),
          SizedBox(
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              menu == 'membership' ? 'Membership Data' : 'History Payment',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
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
                    color: Color.fromRGBO(12, 48, 61, 1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Expanded(
                    child: Row(
                      children: [
                        RaisedButton(
                          color: Color.fromRGBO(241, 90, 36, 1),
                          onPressed: () {},
                          child: Text(
                            'Gold',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: Color.fromRGBO(12, 48, 61, 1),
                          child: Text(
                            'Silver',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: Color.fromRGBO(12, 48, 61, 1),
                          child: Text(
                            'Bronze',
                            style: TextStyle(
                              fontSize: 14,
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color.fromRGBO(12, 48, 61, 1),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                  ),
                  child: Text('Search'),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            for (var i = 0; i < 10; i++)
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AdminMembershipDetailScreen.route,
                    arguments: {
                      'id': i,
                      'name': 'user $i',
                      'email': 'user@gmail.com',
                      'phone': '081234567890',
                      'address': 'Jl. Raya No. $i Jakarta Selatan, Indonesia',
                      'membership': 'Gold',
                      'startjoin': Jiffy(DateTime.now())
                          .subtract(
                            duration: Duration(
                              days: 1 * i,
                            ),
                          )
                          .format('dd MMMM yyyy'),
                      'endjoin': Jiffy(DateTime.now())
                          .add(
                            duration: Duration(
                              days: 365 + i,
                            ),
                          )
                          .format('dd MMMM yyyy'),
                      'gender': 'Male',
                      'state': menu == 'membership' ? 'membership' : 'history',
                      'view': 'detail',
                      'payment': {
                        'duration': '1 year',
                        'online': 'Unlimited Online Class',
                        'offline': '4 Class per Week',
                        'article': 'Unlimited Article',
                        'paymentdate': '2020-01-01',
                        'paymentstatus': 'Paid',
                        'paymentsubtotal': 'Rp. 2400.000',
                        'voucher': 'Rp. 200.000',
                        'paymenttotal': 'Rp. 2200.000',
                        'paymentmethod': 'Go-Pay',
                      }
                    },
                  );
                },
                child: Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8, top: 8),
                      child: Text('Membership $i'),
                    ),
                    subtitle: Column(
                      children: [
                        Table(
                          columnWidths: {
                            0: FlexColumnWidth(2),
                            1: FlexColumnWidth(3),
                          },
                          children: [
                            TableRow(
                              children: [
                                Text('ID'),
                                Text('0011311394$i'),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text('Join'),
                                Text(Jiffy(DateTime.now())
                                    .subtract(
                                      duration: Duration(
                                        days: 1 * i,
                                      ),
                                    )
                                    .format('MMMM yyyy')),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text('Membership'),
                                Text('Gold'),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              AdminMembershipDetailScreen.route,
                              arguments: {
                                'id': i,
                                'name': 'user $i',
                                'email': 'user@gmail.com',
                                'phone': '081234567890',
                                'address': 'Jl. Raya No. $i',
                                'membership': 'Gold',
                                'startjoin': Jiffy(DateTime.now())
                                    .subtract(
                                      duration: Duration(
                                        days: 1 * i,
                                      ),
                                    )
                                    .format('dd MMMM yyyy'),
                                'endjoin': Jiffy(DateTime.now())
                                    .subtract(
                                      duration: Duration(
                                        days: 365 + i,
                                      ),
                                    )
                                    .format('dd MMMM yyyy'),
                                'gender': 'Male',
                                'state': 'membership',
                                'view': 'view',
                              },
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            size: 20,
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => Card(
                                child: AlertDialog(
                                  title: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        size: 40,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: Text('Delete'),
                                      ),
                                    ],
                                  ),
                                  content: Text(
                                      'Deleting this file will be permanent.'),
                                  actionsAlignment: MainAxisAlignment.center,
                                  actionsPadding: EdgeInsets.all(10),
                                  actions: [
                                    FlatButton(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: TextButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(12, 48, 61, 1),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 14,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color:
                                                  Color.fromRGBO(12, 48, 61, 1),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        child: Text('Cancel'),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    FlatButton(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Color.fromRGBO(12, 48, 61, 1),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 16,
                                            vertical: 14,
                                          ),
                                        ),
                                        child: Text('Delete'),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
