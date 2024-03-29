import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/pages/item_screen.dart';

class GridItems extends StatelessWidget {
  var pNames = [
    "Watch M2",
    'T-shirt',
    'microphon',
    'shoe',

  ];
  var pImages = [
    "images/icon1.png",
    'images/icon2.png',
    'images/icon3.png',
    'images/icon4.png',

  ];
  var pPrice = [
    "\$106",
    "\$80",
    "\$75",
    "\$63",

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,

        ),
        itemBuilder: (context,index){
       return Container(
         margin: EdgeInsets.all(10),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15),
           color: Color(0xFFD4ECF7),
           boxShadow: [
             BoxShadow(
               color: Colors.black26,
               blurRadius: 4,
               spreadRadius: 2
             )
           ],
         ),
         child: Padding(
           padding: EdgeInsets.all(12),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("30% off"),
                   Icon(Icons.favorite_outline,color: Colors.redAccent,),
                 ],

               ),
               SizedBox(height: 10,),
               Padding(
                 padding: EdgeInsets.all(10),

                 child: InkWell(
                   onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemScreen())),
                   child: Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 25),
                     child: Column(
                       children: [

                         Image.asset(pImages[index],height: 100,width: 100,),
                       ],
                     ),
                   ),
                 )),

               SizedBox(height: 15,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(pNames[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                   SizedBox(height: 5,),
                   Row(
                     children: [
                       Text(pPrice[index],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.redAccent),),
                       SizedBox(width: 5,),
                       Text("\$130",style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.black.withOpacity(0.4),fontSize: 13),)
                     ],
                   )

                 ],
               )


             ],
           ),
         ),


       );
        });
  }
}
