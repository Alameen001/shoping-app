

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

import 'package:shopx/presentaion/widgets/user_adress.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 130,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title:  Text(
                      "Product Details",
                      style:
                          TextStyle( fontWeight: FontWeight.w700,color: Colors.black),
                    ),
              ),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag,color: Colors.black,))
              ],
              
            ),
            SliverToBoxAdapter(
              child: 
  SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
            
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Stack(
                  children: [
                    Image.network(
                      "https://rukminim1.flixcart.com/image/714/857/k6mibgw0/t-shirt/n/z/a/m-a2-ausk-original-imafpfyyyayuxga3.jpeg?q=50",
                      fit: BoxFit.cover,
                      height: 430,
                      width: 320,
                    ),
                    // Container(
                    //   height: 80,
                    //   width: 70,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.only(
                    //         bottomLeft: Radius.circular(20),
                    //       ),
                    //       color: Color(0xffF4DCB0)),
                    //   child: Center(
                    //     child: Text(
                    //       "${40}",
                    //       style: TextStyle(
                    //           fontSize: 30, fontWeight: FontWeight.w800),
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                      bottom: 11,
                      left: 150,
                      child: Container(
                        height: 3.5,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 540,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                       
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                "Description",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 2,
                              width: 160,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Ripped Straight Fit T-Shirts",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        """
      Mid-rise jeans made of rigid fabric with five
      pockets. Ripped details Front zip tly and 
      metal top button fastening.""",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          '₹ 1299',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Stock : 15",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "S",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffF4DCB0)),
                          ),
                          Spacer(),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xffF4DCB0)),
                            child: Center(
                                child: Text(
                              "M",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )),
                          ),
                          Spacer(),
                          Text(
                            "L",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffF4DCB0)),
                          ),
                          Spacer(),
                          Text(
                            "XL",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffF4DCB0)),
                          ),
                          SizedBox(
                            width: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 25, right: 25),
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //           height: 60,
                      //           width: 60,
                      //           decoration: BoxDecoration(
                      //               border: Border.all(color: Color(0xffF4DCB0)),
                      //               borderRadius: BorderRadius.circular(12)),
                      //           child: Icon(
                      //             Icons.message_rounded,
                      //             color: Color(0xffF4DCB0),
                      //             size: 20,
                      //           )),
                      //       Spacer(),
                      //       Container(
                      //         height: 68,
                      //         width: 250,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(25),
                      //           color: Color(0xffF4DCB0),
                      //         ),
                      //         child: Center(
                      //           child: Text(
                      //             "SHOP NOW",
                      //             style: TextStyle(
                      //                 fontWeight: FontWeight.bold,
                      //                 color: Colors.black,
                      //                 fontSize: 18),
                      //           ),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // )
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: 50,
                                width: 60,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xffF4DCB0)),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Icon(
                                  Icons.favorite,
                                  color: Color(0xffF4DCB0),
                                  size: 20,
                                )),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.55,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Get.to(UserAdressScreen());
                                },
                                icon: Icon(
                                  CupertinoIcons.bag,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  "BUY NOW",
                                  style: TextStyle(color: Colors.black),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xffF4DCB0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

            )
          ],
        ),
      ),
    );
  }
}
