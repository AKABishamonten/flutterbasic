import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(

          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ]),
              child: const Center(
                child: Text(
                  "BoxShadow",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5),
                color: Colors.grey[300],
              ),
              child: const Center(
                child: Text(
                  "Border All",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.black, width: 5)),
              child: const Center(
                  child: Text(
                "Circle",
                style: TextStyle(fontSize: 24),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.black, width: 5),
                  image: DecorationImage(
                    image: NetworkImage("https://www.serebii.net/pokemon/art/105.png"),
                  )
              ),
              child: const Center(
                  child: Text(
                "Image",
                style: TextStyle(fontSize: 24),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                print('Button Check');
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple,
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(4,4)
                    ),
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(-4,-4)
                    ),
                  ]
                ),
                child: const Center(
                  child: Text(
                    "Container Button",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      fontSize: 18
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
