


import 'package:flutter/material.dart';

class Card1details extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: MaterialButton(
        onPressed: (){
       //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailspage()));
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    
                    child: Image.asset(
                      "images/Frap.png",
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
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,)
                      ),
                      SizedBox(height: 10),
                      Text(
                        'A frappuccino is a blended coffee drink that is made with ice and milk.',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 10),
                      Row(
                      
                        children: [
                          Icon(Icons.star, color: Colors.yellow,size:30),
                          Text(
                            '4.5',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                          Text(' (1256 reviews)',style:TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
