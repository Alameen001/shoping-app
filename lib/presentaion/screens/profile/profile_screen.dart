import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/Services/Auth_service.dart';
import 'package:shopx/presentaion/screens/Login/login.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Account",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // Get.defaultDialog(
                //           title: "logout",
                // textConfirm: "Confirm",

                //   textCancel: "Cancel",
                //    barrierDismissible: false,

                // );

                Get.dialog(
                  AlertDialog(
                    title: const Text('Dialog'),
                    content: const Text('This is a dialog'),
                    actions: [
                      TextButton(
                        child: const Text(
                          "Close",
                        ),
                        onPressed: () => Get.back(),
                      ),
                      TextButton(
                        child: const Text(
                          "Log out",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () async {
                          await AuthService().SignOut();

                          Get.offUntil(
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                              (route) => false);
                        },
                      ),
                    ],
                  ),
                );
              },
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 180,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "https://cdn.shopify.com/s/files/1/0266/6276/4597/products/300896355BLACK_1.jpg?v=1654498968",
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ameen",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("ameenaash36@gmail.com"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "9809706617",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit",
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  title: Text(
                    "Orders",
                  ),
                  subtitle: Text("Check your order status'"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down_rounded)),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "Whishlist",
                  ),
                  subtitle: Text("Check your order status'"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down_rounded)),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "Adress",
                  ),
                  subtitle: Text("Check your order status'"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down_rounded)),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "Terms & Conditions",
                  ),
                  subtitle: Text("Check your order status'"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down_rounded)),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
