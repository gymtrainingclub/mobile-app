// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MembershipPaymentScreen extends StatefulWidget {
  const MembershipPaymentScreen({Key? key}) : super(key: key);
  static const String route = '/membership_payment';

  @override
  State<MembershipPaymentScreen> createState() =>
      _MembershipPaymentScreenState();
}

class _MembershipPaymentScreenState extends State<MembershipPaymentScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Payment',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Name Member',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text('John Doe', style: TextStyle(fontSize: 14)),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Alamat Member',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Jl. Raya Nur Hidayat No.1, Kota Surabaya',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'No. Telp',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                '081-898-898-898',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Membership',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Gold Membership',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Price',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Rp. 100.000 / Bulan',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Payment Method',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 40,
                      width: 80,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.grey[300],
                        border: Border.all(
                          color: Colors.black54,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.credit_card,
                          color: Colors.black,
                          size: 32,
                        ),
                      ),
                    );
                  },
                  itemCount: 2,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Total',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Rp. 100.000',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              RaisedButton(
                onPressed: () {},
                color: const Color.fromRGBO(0, 103, 132, 1),
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'Payment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
