import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  var pNames = [
    "Watch M2",
    'T-shirt',
    'microphon',
    'shoe',
  ];
  var pSize = [
    "M",
    "XL",
    "XXL",
    "M",
  ];

  var pPrice = [
    "\$106",
    "\$80",
    "\$75",
    "\$63",
  ];
  var pImages = [
    "images/icon1.png",
    'images/icon2.png',
    'images/icon3.png',
    'images/icon4.png',

  ];



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              child: Text(
                "My Cart",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Column(
              children: [
                for(int i =0;i<4;i++)
                Container(

                  height: 120,
                    width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 248, 248, 248),

                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width/4,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          color: Color(0xFFD4ECF7),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      child:  Image.asset(pImages[i],height: 80,width: 80,),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 15,top: 20,bottom: 25),
                        child: Container(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(pNames[i],style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 3,),
                              Row(
                                children: [
                                  Text("Size: ",style: TextStyle(fontWeight: FontWeight.bold),),

                                  Text(pSize[i],style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 3,),

                                ],
                              ),
                              SizedBox(height: 3,),

                              Text(pPrice[i],style: TextStyle(fontWeight: FontWeight.bold),)


                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
