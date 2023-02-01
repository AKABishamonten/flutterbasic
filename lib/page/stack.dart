import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack and Positioned Widget"),
      ),
      body: Column(
        children: [
          Container(
            child: SizedBox(
              width: double.infinity,
              height: 280,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.network(
                    'https://images4.alphacoders.com/982/982990.jpg', 
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment(0.6 , 0.6),
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(16),
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Geralt of Rivia', style: TextStyle(fontSize: 18,color: Colors.white),),
                          SizedBox(height: 4,),
                          Text('Witcher', style: TextStyle(color: Colors.white70),)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 24,
                      child: Icon(Icons.favorite, color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Geralt of Rivia ยอดชายนาย Witcher ที่หลายคนรู้จักจากซีรีส์วิดีโอเกมถือกำเนิดมาจากนิยายของประเทศโปแลนด์ชื่อดังซึ่งมีชื่อว่า Cykl wiedźmiński ผลงานการเขียนของ Andrzej Sapkowski ตัวนิยายเกี่ยวข้องกับการผจญภัยของ Geralt นักล่าปีศาจผู้โด่งดัง โดยเรื่องราวของเขาเริ่มต้นในนิยายเรื่องสั้นแบ่งเป็นตอน ๆ สองเล่ม The Last Wish และ Sword of Destiny ก่อนจะถูกขยายเป็นการผจญภัยอันยิ่งใหญ่ยาวนาน ในนิยายชุด 5 เล่มจบ (The Lady of the Lake เพิ่งมีแปลเป็นภาษาอังกฤษในเดือน มีนาคม ปี 2017) แม้ตัวเกมจะสานต่อเนื้อหาจากในนิยายแต่รูปแบบการนำเสนอของทั้งสองก็มีส่วนที่แตกต่างกันไม่ว่าจะเป็นลักษณะนิสัยของตัวละคร รูปลักษณ์ภายนอก ไปจนถึงรายละเอียดต่าง ๆ ส่วนตัวฉบับซีรีส์ของ Netflix ที่ได้ดาราหนุ่มรูปงามกล้ามโต Henry Cavill มารับบท Geralt จะเป็นการหยิบเอาเนื้อหาเรื่องราวในนิยายมานำเสนอ ดังนั้นแฟน ๆ ก็ไม่ต้องแปลกใจหากมีหลายส่วนที่แตกต่างไปจากเรื่องราวที่เราคุ้นเคยจากในฉบับวีดีโอเกม',
                    style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
