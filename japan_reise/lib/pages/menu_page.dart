import 'package:flutter/material.dart';
import 'package:japan_reise/components/button.dart';
import 'package:japan_reise/components/event_tile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 210, 243),
      appBar: AppBar(
        title: Text("J A P A N"),
        centerTitle: true,
        // also set the color in appBar
        backgroundColor: Colors.transparent,
        elevation: 1, //1 as transparent, 0 as original
        leading: Icon(Icons.menu),  //now: a placeholder
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xFFFFB875),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              // make space between elements in row
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                        "32% Nachlass",
                        style: TextStyle(
                          fontSize: 20
                        ),
                    ),
                    SizedBox(height: 15),
                    MyButton(myText: "Buchen", event: (){})
                  ],
                ),
                // SizedBox(width: 25),
                Image.asset(
                    'lib/images/japan6.png',
                    height: 100,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10
          ),
          // the search box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Suche Event",
                // border for the search box
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white,
                      width: 2
                  )
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                )
              ),
            ),
          ),
          SizedBox(
            height: 5
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Events",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 5),
          EventTile(
              name: "Mitama Matsuri Festival",
              price: '49 Euro',
              imagePath: 'lib/images/japan7.png',
              rating: "5"
          )

        ],
      ),

    );
  }
}
