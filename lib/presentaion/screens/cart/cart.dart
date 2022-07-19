import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/presentaion/screens/cart/widgets/cart_items.dart';
import 'package:shopx/presentaion/widgets/user_adress.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping CartBag",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1 ITEMS SELECTED (807)",
                        style: TextStyle(color: Colors.black),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                    ],
                  ),
                ),
                CartItems(),
              ],
            ),
          ),
           Container(
            height: 60,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "₹ 807.00",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text("View Details",   style:
                          TextStyle(color: Colors.blue),)
                  ],
                ),
                ElevatedButton(onPressed: (){
                  Get.to(UserAdressScreen());
                }, child: Text("Proceed TO Pay"))
              ],
            ),
            
          ),
          SizedBox(height: 45,)
         
        
          
        ],
      ),
      
      
    );
  }
}
