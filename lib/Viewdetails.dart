import 'package:cafe_coffee_house_/details/detailspage.dart';
import 'package:flutter/material.dart';

class ViewAllDetails extends StatefulWidget {
  @override
  State<ViewAllDetails> createState() => _ViewAllDetailsState();
}

class _ViewAllDetailsState extends State<ViewAllDetails> {
   final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
   void _onSearch(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  final List<Map<String, dynamic>> items = [
    {
      'imageUrl': 'assets/images/Frap.png',
      'title': 'Frappuccino',
      'subDescription': 'A frappuccino is a blended coffee drink that is made with ice and milk.',
      'description': 'A Frappuccino is a popular blended coffee drink, often associated with Starbucks, that combines coffee, milk, ice, and various flavorings into a refreshing, frosty beverage. It is typically sweetened and can include syrups, whipped cream, and other toppings for added flavor and texture. The Frappuccino comes in various flavors, such as mocha, caramel, vanilla, and seasonal specialties, allowing for a wide range of customization to suit individual preferences. The base of a Frappuccino can either be coffee or a creme base for those who prefer a non-caffeinated option.',
      'rating': 1256,
      'reviews': 4.5,
      'price': 4.60,
    },
    {
      'imageUrl': 'assets/images/2.png',
      'title': 'Flat White',
      'subDescription': 'A flat white is a coffee drink made with espresso and steamed milk.',
      'description': 'The flat white is a coffee drink that originated in either Australia or New Zealand, with both countries claiming its creation. It is made with a double shot of espresso and microfoam, which is steamed milk with fine, velvety bubbles. The result is a coffee with a strong espresso flavor and a creamy texture.',
      'rating': 1256,
      'reviews': 3.5,
      'price': 6.50,
    },
    {
      'imageUrl': 'assets/images/3.png',
      'title': 'Latte',
      'subDescription': 'A latte is a coffee drink made with espresso and steamed milk.',
      'description': 'A latte, short for "caffè latte," is an espresso-based coffee drink originating from Italy. It consists of a single or double shot of espresso mixed with steamed milk and topped with a small amount of milk foam. The result is a creamy, mild coffee with a smooth texture. Unlike a cappuccino, which has a larger proportion of foam to milk, a latte has more milk and less foam, giving it a richer and creamier taste.',
      'rating': 12356,
      'reviews': 2.5,
      'price': 4.50,
    },
    {
      'imageUrl': 'assets/images/1.png',
      'title': 'Cappuccino',
      'subDescription': 'A cappuccino is prepared with equal parts double espresso, steamed milk, and milk foam.',
      'description': 'A cappuccino is a coffee drink made with equal parts espresso, steamed milk, and milk foam. It often has a rich, creamy texture and a strong coffee flavor. It\'s usually topped with a layer of foam and sometimes dusted with cocoa powder or cinnamon.A cappuccino is a coffee drink made with equal parts espresso, steamed milk, and milk foam. It often has a rich, creamy texture and a strong coffee flavor.',
      'rating': 1256,
      'reviews': 4.5,
      'price': 4.35,
    },
    {
      'imageUrl': 'assets/images/6.png',
      'title': 'Espresso',
      'subDescription': 'Espresso serves as the base for numerous popular coffee drinks.',
      'description': 'Espresso is a highly concentrated coffee beverage brewed by forcing nearly boiling water through finely-ground coffee beans under high pressure. It is the foundation for many other coffee drinks, known for its rich flavor, dense texture, and thick crema on top. Typically prepared using an espresso machine, which operates at around 9 bars of pressure, espresso is served in small portions, usually 1 ounce for a single shot or 2 ounces for a double shot. The resulting drink is intense, robust, and has a velvety crema, a golden-brown foam that indicates a well-extracted shot.',
      'rating': 1050,
      'reviews': 4.2,
      'price': 3.56,
    },
    {
      'imageUrl': 'assets/images/5.png',
      'title': 'Americano',
      'subDescription': 'Americano serves as the base for numerous popular coffee drinks.',
      'description': 'An Americano is a type of coffee made by diluting one or more shots of espresso with hot water. This process creates a coffee that has a similar strength to drip coffee but retains the distinctive flavor profile of espresso. The Americano is known for its smooth taste and balanced flavor, which is less intense than straight espresso. It\'s a popular choice for those who enjoy the rich notes of espresso but prefer a milder coffee experience. The term Americano originated during World War II when American soldiers diluted espresso to replicate the milder coffee they were accustomed to back home.',
      'rating': 1050,
      'reviews': 4.2,
      'price': 5.60,
    },
    {
      'imageUrl': 'assets/images/4.png',
      'title': 'Mocha',
      'subDescription': 'Mocha coffee is a type of coffee that combines espresso with steamed milk and chocolate syrup or cocoa powder.',
      'description': 'Mocha coffee is a type of coffee that combines espresso with steamed milk and chocolate syrup or cocoa powder. It\'s named after the Mocha coffee beans from Yemen, known for their chocolatey flavor. A classic mocha often has whipped cream on top and sometimes a drizzle of chocolate syrup.',
      'rating': 1256,
      'reviews': 2.5,
      'price': 7.50,
    },
    // Add more items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text(
          'COFFEE',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detailspage(
                      image: item['imageUrl'],
                      title: item['title'],
                      description: item['description'],
                      rating: item['rating'],
                      review: item['reviews'].toDouble(),
                      price: item['price'].toDouble(),
                    ),
                  ),
                );
              },
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.asset(
                          item['imageUrl'],
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20), // Add space between image and column
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              item['subDescription'] ?? 'No description available',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[500],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 30),
                                Text(
                                  '${item['reviews']}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  ' (${item['rating']} reviews)',
                                  style: TextStyle(fontSize: 14),
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
          },
        ),
      ),
    );
  }
}
