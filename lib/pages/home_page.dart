import 'package:assignment/pages/wallet_page.dart';
import 'package:assignment/utils/constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName='/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  int _current = 0;

  final txtController = TextEditingController();
  @override
  void dispose() {
    txtController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final  height = MediaQuery.of(context).size.height ;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        notchMargin: 3,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          //selectedIconTheme: IconThemeData.fallback(),
          elevation: 0,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          //backgroundColor: Colors.white,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
            if (_selectedIndex == 0) {
              // provider.getAllContracts();
            } else if (_selectedIndex == 1) {
              // provider.getAllFavContracts();
              //Navigator.pushReplacementNamed(context, HomePage.routeName);
            }
            else if (_selectedIndex == 2) {
              Navigator.pushReplacementNamed(context, MyWalletPage.routeName);
            }
          },
          items: [
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor:
                      _selectedIndex == 0 ? Colors.red : Colors.transparent,
                  child: Icon(
                    Icons.grid_view,
                    color: _selectedIndex == 0 ? Colors.white : Colors.red,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor:
                      _selectedIndex == 1 ? Colors.red : Colors.transparent,
                  child: Icon(
                    Icons.home,
                    color: _selectedIndex == 1 ? Colors.white : Colors.red,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                    backgroundColor:
                        _selectedIndex == 2 ? Colors.red : Colors.transparent,
                    child: Icon(
                      Icons.calendar_month,
                      color: _selectedIndex == 2 ? Colors.white : Colors.red,
                    )),
                label: ''),
          ],
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width/25.687),
        child: ListView(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: width/8.22,
                  width: width/8.22,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notification_add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: width/82.2,
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    clipBehavior: Clip.antiAlias,
                    controller: txtController,
                    enabled: true,
                    decoration:  InputDecoration(
                      hintText: 'Search with keyword..',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.red,
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(width/13.7)),
                          borderSide: const BorderSide(color: Colors.red,width: 1),
                          gapPadding: 4.0),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(width/13.7)),
                          borderSide: const BorderSide(color: Colors.red,width: 1),
                          gapPadding: 4.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: width/82.2,
                ),
                Container(
                  height: width/8.22,
                  width: width/8.22,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                  child: IconButton(
                    icon: const Icon(
                      Icons.wallet,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
             SizedBox(
              height: height/42.15,
            ),
             Text(
              'Result for CSD',
              style: TextStyle(fontSize: width/13.7, fontWeight: FontWeight.bold),
            ),
           SizedBox(
              height: width/20.55,
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              child: CarouselSlider(
                  items: dummyList
                      .map((e) => Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage("images/bg.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(width/20.55),
                                    color: Colors.red),
                                height: double.maxFinite,
                                width: double.maxFinite,
                              ),
                              Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    padding:  EdgeInsets.all(width/51.375),
                                    decoration:  BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(width/20.55),
                                          topRight: Radius.circular(width/20.55),
                                        )),
                                    alignment: Alignment.center,
                                    height: width/2.055,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jhon Doe',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width/17.125),
                                        ),
                                        SizedBox(
                                          height: width/82.2,
                                        ),
                                        Text(
                                          'Problem Solver | Expert in FMCG | CSD',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width/22.833),
                                        ),
                                        SizedBox(
                                          height: width/82.2,
                                        ),
                                        Text(
                                          'Work at: Bangladesh High Court',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width/34.25),
                                        ),
                                        Text(
                                          'Studied from: Bangladesh University of Science and Technology',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width/34.25),
                                        ),
                                        Text(
                                          'From: Dhaka,Bangladesh',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width/34.25),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: width/1.0275,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.7,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: dummyList.map(
                (image) {
                  //these two lines
                  int index = dummyList.indexOf(image); //are changed
                  return Container(
                    width: width/51.375,
                    height: width/51.375,
                    margin:  EdgeInsets.symmetric(
                        vertical: width/41.1, horizontal: 2.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? const Color.fromRGBO(0, 0, 0, 0.9)
                            : const Color.fromRGBO(0, 0, 0, 0.4)),
                  );
                },
              ).toList(),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: width/5.8714,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width/20.55), color: Colors.red),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Icon(
                      Icons.person_add_alt_1_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: width/41.1,
                    ),
                    Text(
                      'Follow John',
                      style: TextStyle(color: Colors.white, fontSize: width/20.55),
                    )
                  ],
                ),
              ),
            ),
           SizedBox(
              height: width/82.2,
            )
          ],
        ),
      ),
    );
  }
}
