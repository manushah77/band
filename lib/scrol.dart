import 'package:flutter/material.dart';

class Ccch extends StatelessWidget {
  const Ccch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        boxShadow: [
          BoxShadow(
            spreadRadius: 4,
            blurRadius: 4,
            color: Colors.black,
          ),
        ],
        borderRadius: BorderRadius.circular(15.0),
      ),
      height: 340,
      width: 300,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'images/band.png',
                height: 280,
                width: 280,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Jawbone UP move',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
