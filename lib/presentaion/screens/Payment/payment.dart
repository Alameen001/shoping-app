import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/Models/Adress.dart';
import 'package:shopx/presentaion/screens/Order/Order_Screen.dart';

class PaymentScreen extends StatelessWidget {
  String? user;
  PaymentScreen({Key? key, this.user}) : super(key: key);

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  String payment_method = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "PAYMENT  ",
        style: TextStyle(color: Colors.black),
      )),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(height: 50),
                Text("PAYMENT OPTIONS"),
                SizedBox(height: 20),
                RadioListTile(
                  value: "Cash On Delivery",
                  groupValue: payment_method,
                  onChanged: (value) {},
                  title: const Text('Cash on Delivery'),
                ),
                RadioListTile(
                  value: 'Bhim UPI',
                  groupValue: payment_method,
                  onChanged: (value) {},
                  title: const Text('Bhim UPI'),
                ),
                Divider(
                  thickness: 4,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Price Details"),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Product Price"),
                        Text("₹ 751"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Delivery Charge"),
                        Text("₹ 50"),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      thickness: 4,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                   
                  ],
                )
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 246, 244, 244),
            height: 55,
            child: Center(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        '₹ 801.00',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(OrderScreen());
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(160, 25)),
                        child: const Text('PAY NOW',
                            style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
