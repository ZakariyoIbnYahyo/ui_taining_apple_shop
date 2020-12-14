import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final List<String> _listItem = [
  "assets/images/image_1.jpeg",
  "assets/images/image_2.jpg",
  "assets/images/image_3.png",
  "assets/images/image_4.jpg",
  "assets/images/image_5.jpg",
  "assets/images/image_1.jpeg",
  "assets/images/image_2.jpg",
  "assets/images/image_3.png",
  "assets/images/image_4.jpg",
  "assets/images/image_5.jpg",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Apple Products"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text("7"),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //#header
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/image_4.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.5),
                      Colors.black.withOpacity(.05),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lifestyle Sale", style: TextStyle(color: Colors.white, fontSize: 32),),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Center(
                        child: Text("Shop Now", style: TextStyle(color: Colors.grey[800]),),
                      ),
                    ),
                    SizedBox(height: 50,)
                  ],
                ),
              ),

            ),
            //#body
            SizedBox(height: 20,),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: _listItem.map((item) => callOfList(item)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget callOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 40,)
          ],
        ),
      ),
    );
  }
}
