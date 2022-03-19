import 'package:band/discover.dart';
import 'package:flutter/material.dart';

class Passing extends StatefulWidget {
  Passing({
    required this.image,
    required this.name,
    required this.price,
  });

  final String image;
  final String name;
  final int price;

  @override
  _PassingState createState() => _PassingState();
}

class _PassingState extends State<Passing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.align_horizontal_center_outlined,
              color: Colors.black,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              widget.image,
              height: 300,
              width: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  height: 50,
                  width: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  height: 50,
                  width: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              widget.name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text('${widget.price} Dollar',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black26)),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Fitners maintainer and original Product that is newly launch. This gonna fit for all age of People, and suitable for tracking your records and more...',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 70.0,
              width: 320.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: InkWell(
                onTap: () {
                  //some function
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
