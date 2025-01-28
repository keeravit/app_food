import 'package:flutter/material.dart';
import 'food_detail_page.dart';  // นำเข้า FoodDetailPage

class FoodListPage extends StatelessWidget {
  // ข้อมูลของอาหารคาว
  final List<Map<String, String>> foodDetails = [
    {
      'name': 'ครั่วกลิ้ง',
      'description': 'ครั่วกลิ้งเป็นอาหารไทยที่มีรสชาติจัดจ้านจากพริกและเครื่องเทศ',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROTgtsHr1K_HC1mrqwNPYiuQv4d3AXnc4A8g&s',
      'youtubeLink': 'https://youtu.be/dPXJ_99pDfE?si=cwrQIRmpqah6OfT1',
    },
    {
      'name': 'ต้มจือมะละ',
      'description': 'ต้มจือมะละคือเมนูน้ำซุปที่มีรสชาติเปรี้ยวหวานจากมะละกอ',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZGCYycZuQ-WV0moXCw5eLrSJQ7MbUOV-_DA&s',
      'youtubeLink': 'https://youtu.be/Mx4QD0Zv5II?si=ab9hxFhAqp33EKH5',
    },
    {
      'name': 'ไข่ลูกเขย',
      'description': 'ไข่ลูกเขยเป็นเมนูที่มีไข่ต้มและน้ำซอสเผ็ดหวาน',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLCW5uJXKIsLcJT17wVMnQxqF2eme1nBWwAw&s',
      'youtubeLink': 'https://youtu.be/id_OPAvAuMc?si=9MkbYps0_b_3jl2b',
    },
    {
      'name': 'ผัดเปลี่ยวหวาน',
      'description': 'ผัดเปลี่ยวหวานเป็นอาหารที่มีรสชาติเปรี้ยวหวานผสมผสานกัน',
      'imageUrl': 'https://api2.krua.co/wp-content/uploads/2020/06/SlideBanner1140x507-595.jpg',
      'youtubeLink': 'https://youtu.be/ZkelPykzF3M?si=Zn9k2c7BGrV5vpkc',
    },
  ];

  // ข้อมูลของอาหารว่าง
  final List<Map<String, String>> snackDetails = [
    {
      'name': 'ไอติม',
      'description': 'ไอติมหรือไอศกรีมเป็นขนมหวานเย็นที่ทำจากนมและน้ำตาล.',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-afHK4ywJRfLt8zXObus3ZTl5MFrB92I9_g&s',
      'youtubeLink': 'https://www.youtube.com/watch?v=3JZ_D3ELwOQ',
    },
    {
      'name': 'เค้ก',
      'description': 'เค้กเป็นขนมหวานที่ทำจากแป้งและน้ำตาล, มีหลากหลายรสชาติ.',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFwsloKUvo8fi1lg0C_j64qmDGabHldwOCcw&s',
      'youtubeLink': 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
    },
    {
      'name': 'พุดดิ้ง',
      'description': 'พุดดิ้งเป็นขนมหวานเนื้อนุ่มที่ทำจากนม, ไข่ และน้ำตาล.',
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS3FSXYOEO3ZRR68OneIK0hlIsZeAcLZ75AQ&s',
      'youtubeLink': 'https://www.youtube.com/watch?v=3JZ_D3ELwOQ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("รายการอาหาร"),
      ),
      body: ListView(
        children: [
          _buildSectionTitle("อาหารคาว"),
          _buildFoodList(foodDetails, context),
          _buildSectionTitle("อาหารว่าง"),
          _buildFoodList(snackDetails, context),
        ],
      ),
    );
  }

  // ฟังก์ชันสำหรับสร้างหัวข้อของหมวดอาหาร
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  // ฟังก์ชันสำหรับแสดงรายการอาหารในหมวดต่างๆ
  Widget _buildFoodList(List<Map<String, String>> foodList, BuildContext context) {
    return Column(
      children: foodList.map((food) {
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  food['imageUrl']!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  food['name']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  food['description']!,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodDetailPage(food: food),
                      ),
                    );
                  },
                  child: Text("ดูรายละเอียด"),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
