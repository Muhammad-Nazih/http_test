import 'package:flutter/material.dart';
import 'package:http_app/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterScreen(),
    );
  }
}




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
//                   'Color: ${data[index]['data']?['color'] ?? data[index]['data']?['Color'] ?? data[index]['data']?['Srap Colour'] ?? 'N/A'}',
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
