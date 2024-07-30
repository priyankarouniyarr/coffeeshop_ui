import 'package:cafe_coffee_house_/Imagedescription.dart';
import 'package:cafe_coffee_house_/Viewdetails.dart';
import 'package:cafe_coffee_house_/card1details.dart';
import 'package:cafe_coffee_house_/categorybutton.dart';
import 'package:cafe_coffee_house_/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[150],
        appBar: AppBar(
          backgroundColor: Colors.grey[150                  ],
          elevation: 0,
          leading: Image.asset(
            "assets/icons/menu (1).png",
            width: 100,
            height: 100,
          
          ),
         
          
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  GFIconButton(
                    icon: Image.asset(
                  "assets/icons/bag.png",
                height:250,
                width: 100,
                          
                ),
                    onPressed: () {},
                    type: GFButtonType.transparent,
                  ),
                  const GFBadge(
                    shape: GFBadgeShape.circle,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],                          
        ),
        body: SingleChildScrollView(
          child: Container(
            margin:EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Searchbar(),
                  const SizedBox(height: 20),
                  CategoryButtons(),
                  const SizedBox(height: 10),
                  Imagesdescription(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Popular Coffee",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          
                          Icon(
                            Icons.local_fire_department_sharp,
                            color: Colors.yellowAccent,
                            size: 30,
                          ),
                        ],
                      ),
                      InkWell(
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllDetails(
                      
                    )));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Card1details(),
                ],
              ),
            ),
          ),
        ),
      
    );
  }
}
