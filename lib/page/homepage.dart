import 'package:coffee_shop/helper/buildText.dart';
import 'package:coffee_shop/helper/style.dart';
import 'package:coffee_shop/page/detailPage.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: mq.height,
          width: mq.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.darken),
                  image: AssetImage('assets/coff.png'),
                  fit: BoxFit.cover)),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [buildTopText(), Spacer(), buildTaptoOrder(context)],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTopText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 90),
      child: Container(
        child: Column(
          children: [
            buildText(
                name: "its great day for".toUpperCase(), style: textStyle),
            buildText(name: "Coffee", style: textStyle2),
          ],
        ),
      ),
    );
  }

  Widget buildTaptoOrder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 8,
          primary: Colors.brown[200],
          minimumSize: Size(80, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => CoffeeDetail()));
        },
        child: buildText(name: "Order Now".toUpperCase(), style: textStyle1),
      ),
    );
  }
}
