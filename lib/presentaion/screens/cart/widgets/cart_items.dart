import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 232, 232), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://assets.myntassets.com/f_webp,dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/1364628/2016/8/31/11472636737718-Roadster-Men-Blue-Regular-Fit-Printed-Casual-Shirt-6121472636737160-1.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Puma"),
                      Text("Dwane WN's IDP T-Shirts"),
                      Row(
                        children: [
                          ElevatedButton.icon(onPressed: (){},  label: Text("Size"),icon: Icon(Icons.arrow_drop_down),),
                          SizedBox(width: 10,),
                              ElevatedButton.icon(onPressed: (){},  label: Text("Qty"),icon: Icon(Icons.arrow_drop_down),),
                        ],
                      ),
                      Text("1600.00/-"),
                      Text("You Save,2900.00/-",style: TextStyle(color: Colors.green),)
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250,top: 10),
                child: Text("Remove",style: TextStyle(color: Colors.blue),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
