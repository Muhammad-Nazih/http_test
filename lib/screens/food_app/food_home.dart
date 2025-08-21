import 'package:flutter/material.dart';
import 'package:http_app/widgets/widgets_support.dart';

class FoodHome extends StatefulWidget {
  const FoodHome({super.key});

  @override
  State<FoodHome> createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  bool iceCream = false;
  bool pizza = false;
  bool salad = false;
  bool burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Muhammad...',
                    style: AppWidget.boldTextFieldStyle(),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Delicious Food',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                'Discover and Get Great Food',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 20.0),
              showItem(),
              SizedBox(height: 20.0),
              SizedBox(
                height: MediaQuery.of(context).size.shortestSide/1.183,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 5),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/salad2.png',
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Veggie Taco Hash',
                              style: AppWidget.boldTextFieldStyle(),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Fresh and Healthy',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('\$25', style: AppWidget.boldTextFieldStyle()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  // scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    // margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 5),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/salad2.png',
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/3,
                                  child: Text(
                                    'Veggie Taco Hash',
                                    style: AppWidget.boldTextFieldStyle(),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: MediaQuery.of(context).size.width/3,
                                  child: Text(
                                    'Fresh and Healthy',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  width: MediaQuery.of(context).size.width/3,
                                  child: Text('\$25', style: AppWidget.boldTextFieldStyle())),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              //             SizedBox(
              //               height: 250,
              //               width: double.infinity,
              //               child: ListView(
              //                 scrollDirection: Axis.horizontal,
              //                 children: [
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Column(
              //                         children: [
              //                           Container(
              //                             decoration: BoxDecoration(
              //                               borderRadius: BorderRadius.circular(100),
              //                             ),
              //                             width: 200,
              //                             height: 200,
              //                             child: Image.asset('assets/images/salad2.png'),
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(20),
              //                         ),
              //                         width: 200,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(20),
              //                         ),
              //                         width: 200,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(20),
              //                         ),
              //                         width: 200,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(10.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(20),
              //                         ),
              //                         width: 200,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(10.0),
              //                     child: Container(
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                       ),
              //                       width: 200,
              //                       height: 200,
              //                       child: Image.asset('assets/images/salad2.png'),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(10.0),
              //                     child: Container(
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                       ),
              //                       width: 200,
              //                       height: 200,
              //                       child: Image.asset('assets/images/salad2.png'),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(10.0),
              //                     child: Container(
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                       ),
              //                       width: 200,
              //                       height: 200,
              //                       child: Image.asset('assets/images/salad2.png'),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(10.0),
              //                     child: Container(
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                       ),
              //                       width: 200,
              //                       height: 200,
              //                       child: Image.asset('assets/images/salad2.png'),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             SizedBox(height: 20.0),
              //             SizedBox(
              //               height: 200,
              //               child: ListView(
              //                 shrinkWrap: true,
              //                 // physics: NeverScrollableScrollPhysics(),
              //                 children: [
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(100),
              //                         ),
              //                         width: double.infinity,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(100),
              //                         ),
              //                         width: double.infinity,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(100),
              //                         ),
              //                         width: double.infinity,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(100),
              //                         ),
              //                         width: double.infinity,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(100),
              //                         ),
              //                         width: double.infinity,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.all(12.0),
              //                     child: Card(
              //                       child: Container(
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(100),
              //                         ),
              //                         width: double.infinity,
              //                         height: 200,
              //                         child: Image.asset('assets/images/salad2.png'),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            iceCream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: iceCream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'assets/images/ice-cream.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: iceCream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceCream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'assets/images/pizza.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceCream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: salad ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'assets/images/salad.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            iceCream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: burger ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'assets/images/burger.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
