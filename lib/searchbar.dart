import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
   

  
  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
           
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search here',
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          
          ),
       
        child: Image.asset(
                  "assets/icons/filter.png",
                  width: 50,
                  height: 50,
                  color:Colors.white,
        
                ),
        ),
      ],
    );
  }
}
