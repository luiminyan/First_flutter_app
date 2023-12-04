import 'package:flutter/material.dart';
import 'package:japan_reise/components/button.dart';
import 'package:japan_reise/components/event_tile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // define the list of events in scroll bar
    List<EventTile> EventList = [
      // 3 example events
      EventTile(
        name: "Mitama Matsuri Festival",
        price: '49 Euro',
        imagePath: 'lib/images/japan7.png',
        rating: "5",
        details: () {  },
      ),
      EventTile(
        name: "Noodle Haromy Japan",
        price: '19 Euro',
        imagePath: 'lib/images/japan3.png',
        rating: "4",
        details: () {  },
      ),
      EventTile(
        name: "Mount Fuji Tour",
        price: '39 Euro',
        imagePath: 'lib/images/japan6.png',
        rating: "4.7",
        details: () {  },
      )
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 210, 243),
      appBar: AppBar(
        title: Text(
          "J A P A N",
          style: TextStyle(color: Colors.white)
        ),
        centerTitle: true,
        // also set the color in appBar
        backgroundColor: Colors.transparent,
        elevation: 1, //1 as transparent, 0 as original
        leading: Icon(
            Icons.menu,
            color: Colors.white,
        ),  //now: a placeholder
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
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
            padding: EdgeInsets.symmetric(horizontal: 25.0),
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
          // make the ListView expanded
          Expanded(
            //   ListView on EventList
            child: ListView.builder(
                itemBuilder: (context,index) => EventList[index],
                // set the tem count to size of the event list
                itemCount: EventList.length,
                scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Derzeit beliebt",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                    'lib/images/japan2.png',
                    height: 85
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kimono Kultur",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                    ),
                    SizedBox(width: 10),
                    Text(
                      "10 Euro",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}