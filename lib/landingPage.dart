import 'package:flutter/material.dart';

void main() {
  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        home: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(backgroundColor: const Color(0xFFb38795),),
          bottomNavigationBar: const BottomAppBar(
          color: Color(0xFFb38795),
          ),
          
        
        body: Center(
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                Container(
                  
                  alignment: Alignment.center,
                  child:const Text('Welcome to',style: TextStyle(decoration: TextDecoration.none, fontWeight: FontWeight.bold, color: Colors.black ,fontSize: 24),),
                  
                ),

                SizedBox(height:50),
                
                Image.asset(
                'images/shopper.png',
                alignment: Alignment.center,
                height: 100,
                width: 100,
              ),

                SizedBox(height:30),

              Container(
                  
                  alignment: Alignment.center,
                  child:const Text('MyShopper',style: TextStyle(decoration: TextDecoration.none, fontWeight: FontWeight.bold, color: Colors.black ,fontSize: 24),),
                ),
                
                SizedBox(height:50),

              Container(
                  
                  alignment: Alignment.center,
                  color: Colors.transparent,
                  child:const Text('A personal shopper \napplication which \nprovide service for \nUTM Johor student \nand individual',
                  textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.none ,color: Colors.black ,fontSize: 16),),
                ),
                
                
              ],
            )
      ),

    ));
  }
}
