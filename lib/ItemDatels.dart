import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Itemdatels extends StatefulWidget {
  final data;
  const Itemdatels({super.key, this.data});

  @override
  State<Itemdatels> createState() => _ItemdatelsState();
}

class _ItemdatelsState extends State<Itemdatels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home, size: 40),
            ),
            label: "*",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag, size: 40),
            ),
            label: "*",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_outline, size: 40),
            ),
            label: "*",
          ),
        ],
      ),
      endDrawer: Drawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.offline_bolt, color: Colors.black),
            Text(
              " M7MD",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                shadows: [
                  Shadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
            Text(
              "App",
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Image.asset(widget.data['image']),
          SizedBox(height: 3.h),
          Center(
            child: Container(
              child: Text(
                widget.data["title"],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Center(
            child: Container(
              color: Colors.grey,
              child: Text(
                widget.data["subtitle"],
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          SizedBox(height: 3.h),
          Center(
            child: Container(
              child: Text(
                widget.data["price"],
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFE49E00),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" color :    ", style: TextStyle(color: Colors.grey)),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.orange),
                ),
              ),
              SizedBox(width: 2.w),
              Text("grey"),
              SizedBox(width: 4.w),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(width: 2.w),
              Text("black"),
            ],
          ),
          SizedBox(height: 3.h),
          Container(
            child: Text(
              "Size :  34  35  40  41",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 3.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 39.sp),
            child: MaterialButton(
              color: Colors.black,
              onPressed: () {},
              child: Text("Add to cart", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
