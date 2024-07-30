import 'package:cafe_coffee_house_/Homepage.dart';
import 'package:cafe_coffee_house_/details/loading_Screen.dart';
import 'package:cafe_coffee_house_/registration%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool isLoading = false;

  void _login() async {
    setState(() {
      isLoading = true;
    });

    // Simulate a delay for the loading screen
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      isLoading = false;
    });

    // Navigate to HomePage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return isLoading ? LoadingScreen():Scaffold(
      
      body: Stack(
        children: <Widget>[
          // Background image
           // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg1.png"), 
                  fit: BoxFit.cover,
              ),
            ),
          ),
          
       
        
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // Login form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Logo
                  Text('Log In',style:    TextStyle(color: Colors.orangeAccent,fontSize: 30,fontWeight: FontWeight.w600)),
                  SizedBox(
                    height:40
                  ),
                 
                  
      
                     TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                                         ),
                  
                  SizedBox(height: 20),
                  // Password field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Login button
                  Container(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: _login,
                      
                        
  
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.orange[400], // Button color
                      ),
                      child: Text('Login',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 15),),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Registration option
                  TextButton(
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistrationScreen()));
                  
                    },
                    child: Text(
                      'Don\'t have an account? Register here',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
