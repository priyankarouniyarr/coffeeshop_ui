import 'package:cafe_coffee_house_/cart/cart.dart';
import 'package:cafe_coffee_house_/details/detailspage.dart';
import 'package:flutter/material.dart';

class Imagesdescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Allows horizontal scrolling
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // First Card Widget
            Cardlayout(
              img: "images/1.png",
              title: "Cappuccino",
              subtitle: "A cappuccino is prepared with equal parts double espresso...",
              price: "\$4.35",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailspage(description1: 'A cappuccino is a coffee drink made with equal parts espresso, steamed milk, and milk foam. It often has a rich, creamy texture and a strong coffee flavor. Its usually topped with a layer of foam and sometimes dusted with cocoa powder or cinnamon.A cappuccino is a coffee drink made with equal parts espresso, steamed milk, and milk foam. It often has a rich, creamy texture and a strong coffee flavor.', title1:'Cappuccino',image1: "images/1.png",number1: 4.5,price1: "\$4.35",),
                  ),
                );
              },
            ),
            SizedBox(width: 16), // Space between cards
            // Second Card Widget
            Cardlayout(
              img: "images/2.png",
              title: "Flat White",
              subtitle: "A flat white is a coffee drink made with espresso and steamed milk...",
              price: "\$6.50",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailspage(title1:'Flat White', description1:'The flat white is a coffee drink that originated in either Australia or New Zealand, with both countries claiming its creation. It is made with a double shot of espresso and microfoam, which is steamed milk with fine, velvety bubbles. The result is a coffee with a strong espresso flavor and a creamy texture.', price1: '\$6.50', image1: "images/2.png", number1: 3.5),
                  ),
                );
              },
            ),
            SizedBox(width: 16), 
            // Third Card Widget
            Cardlayout(
              img: "images/3.png",
              title: "Latte",
              subtitle: "A latte is a coffee drink made with espresso and steamed milk...",
              price: "\$4.50",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailspage(title1:'Latte', description1: 'A latte, short for "caffè latte," is an espresso-based coffee drink originating from Italy. It consists of a single or double shot of espresso mixed with steamed milk and topped with a small amount of milk foam. The result is a creamy, mild coffee with a smooth texture. Unlike a cappuccino, which has a larger proportion of foam to milk, a latte has more milk and less foam, giving it a richer and creamier taste.', price1: '\$4.50', image1: "images/3.png", number1: 2.5)
                  ),
                );
              },
            ),
            SizedBox(
              width: 16,
            ),
            Cardlayout(
              img: "images/4.png",
              title: "mocha",
              subtitle:"Mocha coffee is a type of coffee that combines espresso with steam.. ...",
              price: "\$7.50",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailspage(title1:'mocha', description1: 'Mocha coffee is a type of coffee that combines espresso with steamed milk and chocolate syrup or cocoa powder. Its named after the Mocha coffee beans from Yemen, known for their chocolatey flavor. A classic mocha often has whipped cream on top and sometimes a drizzle of chocolate syrup. ', price1: '\$7.50', image1: "images/4.png", number1: 2.5)
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


class Cardlayout extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final String? price;
  final Function()? onPressed; // Fixed parameter name

  // Constructor with required parameters
  Cardlayout({
    required this.img,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.onPressed, // Fixed parameter name
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Set a fixed width for the card
      child: MaterialButton(
        onPressed: onPressed, // Fixed usage of parameter
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                img!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title!,
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Icon(Icons.favorite, size: 20, color: Colors.red),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      subtitle!,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price!,
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25,
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
      ),
    );
  }
}
