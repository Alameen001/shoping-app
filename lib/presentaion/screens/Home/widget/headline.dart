import 'package:flutter/material.dart';

class HeadlineBrand extends StatelessWidget {
  const HeadlineBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return SizedBox(
      height: 230,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "A NEW FASHION BRAND",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: Size.width,
                  // height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto:eco,w_600,c_limit,fl_progressive/assets/images/retaillabs/2022/4/8/aa8037d7-1a7d-43c2-9319-c0892ba131981649429421021-TheSummerShop-HotRightNow-Men.gif"),
                          fit: BoxFit.cover)),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
