import 'package:band/file.dart';
import 'package:flutter/material.dart';

class Gril extends StatefulWidget {
  Gril({
    required this.image,
    required this.name,
    required this.price,
  });

  final String image;
  final String name;
  final int price;

  @override
  State<Gril> createState() => _GrilState();
}

class _GrilState extends State<Gril> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15.0, top: 8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            boxShadow: [
              BoxShadow(
                spreadRadius: 4,
                blurRadius: 4,
                color: Colors.black,
              ),
            ],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Image.asset(
            widget.image,
            height: 80,
            width: 80,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 20.0, color: Colors.white70),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '${widget.price} Dollar',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 21.0, left: 70),
          child: IconButton(
            onPressed: () {
              setState(() {
                _hasBeenPressed = !_hasBeenPressed;
              });
            },
            icon: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(70),
              ),
              child: Icon(
                Icons.favorite,
                color: _hasBeenPressed ? Colors.red : Colors.black,
                size: 30,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
