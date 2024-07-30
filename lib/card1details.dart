


import 'package:cafe_coffee_house_/Viewdetails.dart';
import 'package:cafe_coffee_house_/details/detailspage.dart';
import 'package:flutter/material.dart';

class Card1details extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailspage(
        
      image: 'assets/images/Frap.png',
      title: 'Frappuccino',
       
      description: 'A Frappuccino is a popular blended coffee drink, often associated with Starbucks, that combines coffee, milk, ice, and various flavorings into a refreshing, frosty beverage. It is typically sweetened and can include syrups, whipped cream, and other toppings for added flavor and texture. The Frappuccino comes in various flavors, such as mocha, caramel, vanilla, and seasonal specialties, allowing for a wide range of customization to suit individual preferences. The base of a Frappuccino can either be coffee or a creme base for those who prefer a non-caffeinated option.',
      rating: 1256,
      review: 4.5,
      price: 4.60,
      )));
      },

      child: Card(
        color:Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
              
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.grey,
                      width:0.5
                      
                    ),
                  color:Colors.white,),
                  
                  child: Image.asset(
                    "assets/images/Frap.png",
                    height: 100,
                    width: 250,
                  ),
                  
                ),
              ),
              SizedBox(width: 20), // Add space between image and column
              Expanded(
                flex:2,
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Frappuccino',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,)
                    ),
                    SizedBox(height: 10),
                    Text(
                      'A frappuccino is a blended coffee drink that is made with ice and milk.',
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color:Colors.grey[500]),
                    ),
                    SizedBox(height: 10),
                    Row(
                    
                      children: [
                        Icon(Icons.star, color: Colors.yellow,size:30),
                        Text(
                          '4.5',
                          style: TextStyle(fontWeight: FontWeight.w800,fontSize:14),
                        ),
                        Text(' (1256 reviews)',style:TextStyle(fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
