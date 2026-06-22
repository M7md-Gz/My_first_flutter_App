import 'package:app6/ItemDatels.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Homepage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> search = GlobalKey();
  List categore = [
    {"iconname": Icons.person_outline, "title": "men"},
    {"iconname": Icons.computer, "title": "Computer"},
    {"iconname": Icons.mobile_screen_share, "title": "Mobile"},
    {"iconname": Icons.electric_car, "title": "For car"},
  ];
  List selling = [
    {
      "image":
          "assets/ezgif-7-40cb3e706e-68529-0-210924014855860-removebg-preview.png",
      "title": " سماعات راس",
      "subtitle": " اكسسوارات ",
      "price": "40 SAR   ",
    },
    {
      "image": "assets/LhguOAvls8FJwZYIvJXv5aC0E3PKndnuYqEjTC9f.webp",
      "title": " ساعه ",
      "subtitle": "اكسسوارات",
      "price": "199.99 SAR",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          endDrawer: Drawer(
            child: ListView(children: [DrawerHeader(child: Text(""))]),
          ),
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
          backgroundColor: Colors.white,

          body: Container(
            padding: EdgeInsets.all(20),

            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "search",
                          border: InputBorder.none,
                          fillColor: Colors.grey[200],
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Builder(
                        builder: (context) {
                          return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            icon: Icon(Icons.menu, size: 35),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                    itemCount: categore.length,
                    itemBuilder: (context, i) {
                      return MaterialButton(
                        onPressed: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 2.h),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(100),
                                  ),

                                  height: 70,
                                  width: 70,
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        categore[i]["iconname"],
                                        size: 4.h,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Container(child: Text(categore[i]["title"])),
                          ],
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "best selling",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GridView.builder(
                  itemCount: selling.length,
                  itemBuilder: (context, i) {
                    return MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Itemdatels(data: selling[i]),
                          ),
                        );
                      },
                      child: Card(
                        color: Color(0xFFFDFDFD),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Color(0xFFF5F0F8),
                              child: Image.asset(
                                selling[i]["image"],
                                height: 120,
                                width: 200,
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                selling[i]["title"],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                selling[i]["subtitle"],
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                selling[i]["price"],
                                style: TextStyle(
                                  color: Color(0xFFEBBD04),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 220,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
