import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.blue, width: 200, height: 200),
                  Container(color: Colors.red, width: 200, height: 200),
                  Container(color: Colors.green, width: 200, height: 200),
                  Container(color: Colors.black, width: 200, height: 200),
                  Container(color: Colors.yellow, width: 200, height: 200),
                  Container(color: Colors.blue, width: 200, height: 200),
                  Container(color: Colors.red, width: 200, height: 200),
                  Container(color: Colors.green, width: 200, height: 200),
                  Container(color: Colors.black, width: 200, height: 200),
                  Container(color: Colors.yellow, width: 200, height: 200),
                ],
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: 150, width: 150, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
