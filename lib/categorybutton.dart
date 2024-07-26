import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';

class CategoryButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 30,
            width: 150,
            child: GFButton(
              onPressed: () {},
              color: Colors.orange,
              shape: GFButtonShape.pills,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.yellowAccent,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 30),
          Container(
            width: 150, // Adjust the width as needed
            height: 30,
            child: GFButton(
              onPressed: () {},
              text: "Arabika",
              textStyle: TextStyle(fontSize: 15,color:Colors.white),
              color: Colors.grey,
              shape: GFButtonShape.pills,
              
            ),
          ),
          SizedBox(width: 30),
          Container(
            width: 150, // Adjust the width as needed
            height: 30,
            child: GFButton(
              onPressed: () {},
              text: "Beans",
              color: Colors.grey,
              textStyle: TextStyle(fontSize: 15,color:Colors.white),
              shape: GFButtonShape.pills,
            ),
          ),
        ],
      ),
    );
  }
}
