import 'package:coffee_shop/helper/buildIconReview.dart';
import 'package:coffee_shop/helper/buildText.dart';
import 'package:coffee_shop/helper/changeNumber.dart';
import 'package:coffee_shop/helper/style.dart';
import 'package:flutter/material.dart';

class CoffeeDetail extends StatefulWidget {
  @override
  _CoffeeDetailState createState() => _CoffeeDetailState();
}

class _CoffeeDetailState extends State<CoffeeDetail> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildImageAppBar(mq, context),
              buildDetail(mq),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDetail(Size mq) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      height: mq.height * 0.65,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildText(name: "coffee".toUpperCase(), style: textStyle4),
              buildText(name: "Cappuccino".toUpperCase(), style: textStyle3),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildIconReview(),
                  buildIconReview(),
                  buildIconReview(),
                  buildIconReview(),
                  Icon(
                    Icons.star_border,
                    size: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, right: 3),
                child: buildText(
                    name:
                        'A cappuccino is an espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk, using non-dairy milks, and flavoring with cinnamon or chocolate powder.',
                    style: textStyle6),
              ),
              SizedBox(
                height: 15,
              ),
              buildText(name: '\$ 10.90', style: textStyle5),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildChangeNumber(icon: Icon(Icons.remove)),
                  SizedBox(
                    width: 7,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)),
                        minimumSize: Size(60, 60)),
                    onPressed: () {},
                    child: Text('2'),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  buildChangeNumber(icon: Icon(Icons.remove)),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 7, right: 7),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 8,
                      primary: Colors.black,
                      minimumSize: Size(mq.width, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Order Now'.toUpperCase(),
                    )),
              ),
            ],
          ),
          Positioned(
              right: 40,
              top: 0,
              child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ))),
        ]),
      ),
    );
  }

  Widget buildImageAppBar(Size mq, BuildContext context) {
    return Container(
      height: mq.height * 0.3,
      decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
              image: AssetImage('assets/cu.png'),
              fit: BoxFit.cover)),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Spacer(),
            IconButton(
                icon: Icon(Icons.search),
                color: Colors.white,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
