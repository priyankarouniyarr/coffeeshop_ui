import 'package:cafe_coffee_house_/card1details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text(
            'Cart',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                  
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                margin: EdgeInsets.only(left: 10, right: 10),
                    child: Cardd(
                      title: "Cappuccino",
                      image: "images/1.png",
                      price: "\$3.45",
                      description: "Milk,Coffee,Espresso",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                margin: EdgeInsets.only(left: 10, right: 10),
                    child: Cardd(
                      title: "Flat White",
                      image: "images/2.png",
                      price: "\$6.50",
                      description: "Milk,Coffee,Espresso",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                            
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Coupon Card",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        
                        
                padding: EdgeInsets.symmetric(
                  horizontal:0,
                ),
                margin: EdgeInsets.only(left: 20, right: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200], // Changed container color
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.home_mini,
                                    size: 30,
                                    color: Colors.black12,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "30HOLOFF",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.black,
                                border: Border.all(color: Colors.grey, width: 1),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "Applied",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                        
                            Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),
                            
                            topRight: Radius.circular(10.0)),
                            
                            color: Colors.grey[200]),
                            
                            child:Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Sub total",style:TextStyle(fontSize: 14,)),
                                      Text("\$16.5",style:TextStyle(fontSize: 14,)),
                                    ],),
                                    SizedBox(
                                      height: 10,
                                    ),
                                     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Shipping Fees",style:TextStyle(fontSize: 14,)),
                                      Text("\$3.23",style:TextStyle(fontSize: 14,)),
                                    ],),
                                    SizedBox(
                                      height: 10,
                                      ),
                                       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Taxes",style:TextStyle(fontSize: 14,)),
                                      Text("\$5.51",style:TextStyle(fontSize: 14,)),
                                    ],),
                                    SizedBox(
                                      height: 10,),
                                       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Discounts",style:TextStyle(fontSize: 14,)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("-",style:TextStyle(fontSize: 14,)),
                                    
                                          Text("\$3.0",style:TextStyle(fontSize: 14,color: Colors.green[300])),
                                        ],
                                      ),
                                    ],),
                                        
                                 ] ),

                                 Text("--------------------------------------------------------------------------------------------------------------")
                                    ,SizedBox(height: 10,),
                                     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Total",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w900)),
                                      Text("\$22.14",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w900)),
                                    ],),
                                  SizedBox(height: 10),
                  Container(
                    width: 500,
                     decoration: BoxDecoration(
                       color: Colors.brown,
                       borderRadius: BorderRadius.circular(25)
                     ),
                   
                       padding: EdgeInsets.all(10),
                       child: MaterialButton(
                        onPressed: (){},
                         child: Text(
                           "checkout",
                           style: TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ),
                      ]  ),
                    ),
                                 
                                 
                                 
                )  ]),
                           ] ),
                                      
                                      )  
                  )
                
              ),
            );
          
        
  }
}

class Cardd extends StatelessWidget {
  final String? title;
  final String? price;
  final String? image;
  final String? description;

  Cardd({
    this.title,
    this.price,
    this.image,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Image.asset(
                  "$image",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20), // Add space between image and column
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Small",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.orangeAccent)),
                  Text('$title',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                  Text(
                    '$description',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$price',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.orangeAccent),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black, width: 0.9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Center(
                            child: Text(
                              "-  1  +",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
