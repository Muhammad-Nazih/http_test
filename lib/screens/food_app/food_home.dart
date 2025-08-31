import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http_app/screens/food_app/meal_details.dart';
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

  List<String> images = [
    'assets/images/food1.jfif',
    'assets/images/food2.jfif',
    'assets/images/food3.jpg',
    'assets/images/food4.jpg',
    'assets/images/food5.jfif',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello, Muhammad Nazih',
                    overflow: TextOverflow.ellipsis,
                    style: AppWidget.bold1TextFieldStyle(),
                  ),
                  Spacer(),
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
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: Duration(seconds: 5),
                  viewportFraction: 1,
                ),
                items: List.generate(
                  images.length,
                  (index) => ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              // Text(
              //   'Delicious Food',
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 30,
              //     fontFamily: 'Poppins',
              //   ),
              // ),
              // Text(
              //   'Discover and Get Great Food',
              //   style: TextStyle(
              //     color: Colors.grey,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 15,
              //     fontFamily: 'Poppins',
              //   ),
              // ),
              SizedBox(height: 20.0),
              showItem(),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommened for you',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MealDetails()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      right: 5,
                      left: 5,
                    ),
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
                            Expanded(
                              child: Center(
                                child: Image.asset(
                                  'assets/images/salad2.png',
                                  width: 110,
                                  height: 110,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Veggie Taco Hash',
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Fresh and Healthy',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$25.00',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // ListView.separated(
              //   separatorBuilder: (context, index) => SizedBox(height: 20),
              //   shrinkWrap: true,
              //   physics: BouncingScrollPhysics(),
              //   // scrollDirection: Axis.vertical,
              //   itemCount: 5,
              //   itemBuilder: (context, index) => Container(
              //     // margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 5),
              //     child: Material(
              //       elevation: 5,
              //       borderRadius: BorderRadius.circular(20),
              //       child: Container(
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(20),
              //         ),
              //         padding: EdgeInsets.all(20),
              //         child: Row(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Image.asset(
              //               'assets/images/salad2.png',
              //               width: 120,
              //               height: 120,
              //               fit: BoxFit.cover,
              //             ),
              //             SizedBox(width: 10),
              //             Column(
              //               children: [
              //                 Container(
              //                   width: MediaQuery.of(context).size.width / 3,
              //                   child: Text(
              //                     'Veggie Taco Hash',
              //                     style: AppWidget.bold2TextFieldStyle(),
              //                   ),
              //                 ),
              //                 SizedBox(height: 5),
              //                 Container(
              //                   width: MediaQuery.of(context).size.width / 3,
              //                   child: Text(
              //                     'Fresh and Healthy',
              //                     style: TextStyle(
              //                       color: Colors.grey,
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 15,
              //                       fontFamily: 'Poppins',
              //                     ),
              //                   ),
              //                 ),
              //                 SizedBox(height: 5),
              //                 Container(
              //                   width: MediaQuery.of(context).size.width / 3,
              //                   child: Text(
              //                     '\$25',
              //                     style: AppWidget.bold1TextFieldStyle(),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
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
