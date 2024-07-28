import 'package:cafe_coffee_house_/cart/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  
  final String? title1;

  final String? description1;

  final String? price1;

  final String? image1;

  final double? number1;

  Detailspage({
    required this.title1,
    required this.description1,
    required this.price1,
    required this.image1,
    required this.number1,
  });

  @override
  
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    appBar:   AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back, color: Colors.black),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
children:[
          Expanded(
            child: Center(
              child: Text(
                "$title1!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
]
      ),
      actions: [
        Icon(Icons.favorite, size: 30, color: Colors.red),
        SizedBox(width: 16), // Add some padding to the right
      ],
    ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Container(
            // padding: EdgeInsets.symmetric),
              margin:EdgeInsets.only(left:20,right:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.asset(
                      image1 ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 20),
                  Text(
                    "Size",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width:200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200],
                    ),
                   
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Small size button with icon and text
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Small",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      decoration: TextDecoration.none),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.local_drink, color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Medium",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      decoration: TextDecoration.none),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.local_drink, color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Large",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      decoration: TextDecoration.none),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.local_drink, color: Colors.black),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Qty.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.black, width: 0.9),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
                              child: Center(
                                child: Text(
                                  "-  1  +",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Icon(Icons.star_border_outlined, color: Colors.black, size: 30),
                            SizedBox(width: 10),
                            Text(
                              '${number1 ?? 0}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Text(
                              ' (1256 reviews)',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    description1 ?? '',
                    style: TextStyle(
                      fontSize: 14,
                      wordSpacing: 1.5,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      
                    ),textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cart()));
                  
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add to Cart',
                            style: TextStyle(
                              fontSize: 16,
                              
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            price1 ?? '',//If price1 is not null, use the value of price1.If price1 is null, use the empty string ''.
                            style: TextStyle(
                              fontSize: 16,
                      
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
