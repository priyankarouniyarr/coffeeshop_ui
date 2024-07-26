import 'package:cafe_coffee_house_/Imagedescription.dart';
import 'package:cafe_coffee_house_/card1details.dart';
import 'package:cafe_coffee_house_/categorybutton.dart';
import 'package:cafe_coffee_house_/searchbar.dart';
import 'package:flutter/material.dart';
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  GFIconButton(
                    icon: Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    type: GFButtonType.transparent,
                  ),
                  GFBadge(
                    shape: GFBadgeShape.circle,
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Searchbar(),
                SizedBox(height: 20),
                CategoryButtons(),
                SizedBox(height: 10),
                Imagesdescription(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Popular Coffee",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.local_fire_department_sharp,
                          color: Colors.yellowAccent,
                          size: 30,
                        ),
                      ],
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ),
                      onTap: () {
             //           Navigator.push(context, MaterialPageRoute(builder: (context) => Detailspage()));
                      },
                    ),
                  ],
                ),
                //SizedBox(height: 10),
                Card1details(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
