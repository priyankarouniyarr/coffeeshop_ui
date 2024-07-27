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
             
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.yellowAccent,
                    size:20
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 30),
         Container(
          width: 100, // Adjust the width as needed
          height: 30,
          child: GFButton(
            onPressed: () {},
            text: "Arabika",
            textStyle: TextStyle(fontSize: 15, color: Colors.grey),
            color: Colors.white,
            shape: GFButtonShape.pills,
            borderShape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.grey, 
                width: 1, 
              ),
              borderRadius: BorderRadius.circular(50), 
            ),
          ),
         ),
          SizedBox(width: 30),
       Container(
          width: 100, // Adjust the width as needed
          height: 30,
          child: GFButton(
            onPressed: () {},
            text: "Beans",
            textStyle: TextStyle(fontSize: 15, color: Colors.grey),
            color: Colors.white,
            shape: GFButtonShape.pills,
            borderShape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.grey, // Adjust the border color as needed
                width: 1, // Adjust the border width as needed
              ),
              borderRadius: BorderRadius.circular(50), // Match the border radius with the button shape
            ),
          ),
        ),
    ]  ),
    );
  }
}
      
    
