import 'package:flutter/material.dart';
import 'package:mylistbuy/view/mainScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var appBarHeight = AppBar().preferredSize.height;
    var screenHeight = (size.height - appBarHeight) - MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        height: screenHeight,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.shopping_cart, size: 120, color: Colors.black38),
            SizedBox(height: screenHeight * 0.05),
            Text('MyListBuy', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
            Text('Sua lista de compras na palma da mão!', style: TextStyle(color: Colors.black, fontSize: 20)),
            SizedBox(height: screenHeight * 0.25),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mainscreen()));
              },
              child: Container(
                height: screenHeight * 0.10,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Clique Aqui!', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}