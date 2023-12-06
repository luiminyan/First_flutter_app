import 'package:flutter/material.dart';
import 'package:japan_reise/models/cart_model.dart';
import 'package:provider/provider.dart';

import '../../components/button.dart';
class NoodlePage extends StatelessWidget {
  const NoodlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel> (builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 210, 243),
        appBar: AppBar(
          title: Text(
              "J A P A N",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )
          ),
          centerTitle: true,
          // also set the color in appBar
          backgroundColor: Colors.transparent,
          elevation: 1, //1 as transparent, 0 as original
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                  "lib/images/japan3.png",
                  height: 200
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Noodle Festival",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 254, 198, 6),
                  ),
                  Text(
                      "4,0",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Das erwartet Sie:",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Das Mitama Matsuri ist eines der berühmten Obon-Festivals von Tokio und wird am Yasukuni-Schrein zu Ehren der Ahnen abgehalten. 30.000 bunte Papierlaternen säumen den Weg zum Hauptschrein und hüllen die Fußwege in ein zartes und mysteriöses Licht. Mikoshi-Schreinparaden und traditionelle Gesangs- und Tanztruppen ziehen vier Tage lang durch die Straßen.",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    // distance between lines
                    height: 1.5
                ),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Color.fromARGB(255, 61, 91, 212),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            "19 Euro",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(width: 15),
                        Row(
                          children: [
                            // draw the - and + buttons
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                              ),
                              child: IconButton(
                                // REDUCE item number
                                onPressed: () => cartModel.removeNoodleSuppe(),
                                icon: Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              // use attr., change to string format
                              cartModel.noodlesoup.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                              ),
                              child: IconButton(
                                // INCREASE item number
                                  onPressed: () => cartModel.addNoodleSuppe(),
                                  icon: Icon(Icons.add)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 14),
                    MyButton(
                        myText: "Zum Einkaufswagen",
                        event: () => Navigator.pushNamed(context, '/cartpage')
                    )
                  ],
                ),
              ),
            )
          ],
        )
      )
    );
  }
}
