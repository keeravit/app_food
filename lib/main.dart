import 'package:flutter/material.dart';
import 'food_list_page.dart';  // นำเข้า FoodListPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {111111
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'รายการอาหาร',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodListPage(),  // กำหนดหน้าเริ่มต้นเป็น FoodListPage
    );
  }
}
