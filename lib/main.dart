import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http_app/screens/food_app/food_login.dart';
import 'package:http_app/screens/food_app/food_sign_up.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: const FoodLogin(),
    );
  }
}
















// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:http_app/screens/login_screen.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setSystemUIOverlayStyle(
//     SystemUiOverlayStyle(statusBarColor: Colors.white),
//   );
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login Screen',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade100),
//       ),
//       home: const LoginScreen(),
//     );
//   }
// }
























// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:http_app/screens/login_screen.dart';
// import 'package:http_app/screens/azkar_home_screen.dart';

// void main() {
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.white,
//   ));
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login Screen',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal.shade100),
//         appBarTheme: AppBarTheme(
//           titleTextStyle: TextStyle(
//             color: Colors.white,
//             fontFamily: 'Tajawal',
//             fontSize: 25.0,
//             fontWeight: FontWeight.bold,
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.teal,
//           elevation: 0,
//         ),
//         scaffoldBackgroundColor: Colors.white, 
//       ),
//       home: AzkarHomeScreen(),
//     );
//   }
// }










// import 'package:flutter/material.dart';
// import 'package:http_app/counter_screen.dart';
// import 'package:http_app/cubit.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Api Page'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('Container Test', style: TextStyle(color: Colors.white)),
//         backgroundColor: Colors.black,
//       ),
//       body: Container(
//         // color: Colors.amberAccent,
//         padding: EdgeInsets.all(20),
//         height: 300,
//         child: MaterialButton(onPressed: (){
//           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CounterScreen()));
//         }),
//       ),
//     );
//   }
// }






// import 'package:flutter/material.dart';
// import 'package:http_app/counter_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const CounterScreen(),
//     );
//   }
// }




// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: MainScreen(key: ValueKey('main_screen'), initialValue: 1),
//     ),
//   );
// }

// class MainScreen extends StatefulWidget {
//   final int initialValue;

//   const MainScreen({super.key, required this.initialValue});

//   @override
//   State<MainScreen> createState() {
//     print('🧱 createState');
//     return _MainScreenState();
//   }
// }

// class _MainScreenState extends State<MainScreen> {
//   late int counter;

//   @override
//   void initState() {
//     super.initState();
//     counter = widget.initialValue;
//     print('✅ initState: counter = $counter');
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     print('🔄 didChangeDependencies');
//   }

//   @override
//   void didUpdateWidget(covariant MainScreen oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     print('♻️ didUpdateWidget');
//     if (oldWidget.initialValue != widget.initialValue) {
//       print(
//         '🔁 initialValue changed from ${oldWidget.initialValue} to ${widget.initialValue}',
//       );
//       counter = widget.initialValue;
//     }
//   }

//   @override
//   void deactivate() {
//     print('🚫 deactivate');
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     print('❌ dispose');
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('🛠️ build');
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: AppBar(title: const Text("Main Screen")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Counter: $counter', style: const TextStyle(fontSize: 24)),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   counter++;
//                   print('🔺 setState: counter = $counter');
//                 });
//               },
//               child: const Text("Increase Counter"),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => const SecondScreen()),
//                 );
//               },
//               child: const Text("Go to Second Screen"),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => const InitialValueChangerScreen(),
//                   ),
//                 );
//               },
//               child: const Text("Change initialValue and go back"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print("🟩 SecondScreen build");
//     return Scaffold(
//       appBar: AppBar(title: const Text("Second Screen")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text("Back to Main Screen"),
//         ),
//       ),
//     );
//   }
// }

// class InitialValueChangerScreen extends StatelessWidget {
//   const InitialValueChangerScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Change Initial Value")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => MainScreen(
//                   key:const ValueKey('main_screen'),
//                   initialValue: 100,
//                 ),
//               ),
//             );
//           },
//           child: const Text("Go to MainScreen with new initialValue"),
//         ),
//       ),
//     );
//   }
// }



// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Api Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List data = [];
//   bool isLodaing = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(widget.title, style: TextStyle(color: Colors.white)),
//       ),
//       body: ListView(
//         children: [
//           if (isLodaing) const LinearProgressIndicator(color: Colors.teal, backgroundColor: Colors.red,),
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
//             child: MaterialButton(
//               height: 50,
//               color: Colors.teal,
//               textColor: Colors.white,
//               onPressed: () async {
//                 isLodaing = true;
//                 setState(() {});
//                 var response = await get(
//                   Uri.parse('https://api.restful-api.dev/objects'),
//                 );
//                 var responseBody = jsonDecode(response.body);

//                 setState(() {
//                   data.clear();
//                   isLodaing = false;
//                   data.addAll(responseBody);
//                 });
//               },
//               child: Text('Http Request', style: TextStyle(fontSize: 30)),
//             ),
//           ),
//           ...List.generate(
//             data.length,
//             (index) => Card(
//               child: ListTile(
//                 title: Text('Device: ${data[index]['name']}'),
//                 // دي الطريقة الغلط اللي كنت بستخدمها ومش شغالة
//                 // subtitle: Text('${data[index]['data']['color]}'), 
//                 subtitle: Text(
//                   'Color: ${data[index]['data']?['color'] ?? data[index]['data']?['Color'] ?? data[index]['data']?['Strap Colour'] ?? 'N/A'}',
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



