import 'package:band/file.dart';
import 'package:band/gril.dart';
import 'package:band/passing.dart';
import 'package:band/scrol.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<Productmodel> pro_lime = [
    Productmodel(name: 'IPhoneBand', number: 98, photo: 'images/iphn.jpg'),
    Productmodel(name: 'jackborn 4or', number: 70, photo: 'images/band.png'),
    Productmodel(name: 'IPhoneCircle', number: 120, photo: 'images/itun.jpg'),
    Productmodel(name: 'PakTelBand', number: 108, photo: 'images/up.png'),
    Productmodel(name: 'HuaweiBand', number: 64, photo: 'images/telo.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
              size: 25.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discover',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white),
                ),
                Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++) Ccch(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: 3.0,
              children: [
                for (var x in pro_lime)
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Passing(
                            name: x.name,
                            price: x.number,
                            image: x.photo,
                          ),
                        ),
                      );
                    },
                    child: Gril(
                      name: x.name,
                      price: x.number,
                      image: x.photo,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Container(
// height: 60.0,
// width: 300,
// decoration: BoxDecoration(
// color: Colors.white.withOpacity(0.1),
// boxShadow: [
// BoxShadow(
// spreadRadius: 4,
// blurRadius: 4,
// color: Colors.black,
// ),
// ],
// borderRadius: BorderRadius.circular(15.0),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Padding(
// padding: const EdgeInsets.only(right: 110.0),
// child: Text(
// 'Next',
// style: TextStyle(
// color: Colors.white,
// fontSize: 20,
// ),
// ),
// ),
// Icon(
// Icons.arrow_forward_ios_rounded,
// color: Colors.white,
// ),
// ],
// ),
// ),
