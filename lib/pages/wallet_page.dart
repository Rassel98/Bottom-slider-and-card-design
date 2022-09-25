
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_page.dart';

class MyWalletPage extends StatefulWidget {
  static const String routeName='/wallet';
  const MyWalletPage({Key? key}) : super(key: key);

  @override
  State<MyWalletPage> createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage> {
  int _selectedIndex = 2;


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
        leading:  IconButton(
          onPressed:()=> Navigator.pushReplacementNamed(context, HomePage.routeName),
         icon: const Icon( Icons.arrow_back,
           color: Colors.black,),
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
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            }
            else if (_selectedIndex == 2) {
              //Navigator.pushReplacementNamed(context, MyWalletPage.routeName);
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
        padding: EdgeInsets.all(width/25.68),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: height/16.86,
                  width: height/16.86,
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
                          borderRadius: BorderRadius.all(Radius.circular(height/28.1)),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          gapPadding: 4.0),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(height/28.1)),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          gapPadding: 4.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(height/28.1)),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          gapPadding: 4.0),
                    ),
                  ),
                ),
                 SizedBox(
                  width: width/82.2,
                ),
                Container(
                  height: height/16.86,
                  width: height/16.86,
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
              'My Wallet',
              style: TextStyle(fontSize: width/13.7, fontWeight: FontWeight.bold),
            ),
             SizedBox(
               height: height/42.15,
            ),
            Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height/42.15),
                ),
                elevation: 5,
                child: Stack(
                  children: [
                    Container(
                      height: height/3.372,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("images/bg2.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(height/42.15),
                          color: Colors.red),
                    ),
                    Positioned(
                        left: width/27.4,
                        top: width/10.275,
                        //bottom: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Balance',
                              style: TextStyle(
                               // fontWeight: FontWeight.bold,
                                  color: Colors.white, fontSize: height/42.15),
                            ),
                            SizedBox(
                              height: width/82.2,
                            ),
                            Text(
                              'UC 1000',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.white, fontSize: height/28.1),
                            ),

                          ],
                        )),
                    Positioned(
                        top: width/10.275,
                        right: height/42.15,
                        child: Container(
                          alignment: Alignment.center,
                          height: height/28.1,
                          width: width/3.42,
                          decoration:  BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(width/82.2),
                              )),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                               Text('U',style: TextStyle(
                                 color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic

                              ),),
                              Text('podesta',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic

                              ),),
                            ],
                          ),
                        )),
                     Positioned(
                        bottom: width/10.275,
                        right: height/42.15,
                        child: const Text('12/13',style: TextStyle(color: Colors.white),)),
                    Positioned(
                        bottom: width/10.275,
                        left: width/27.4,
                        child: Column(mainAxisSize: MainAxisSize.min,
                         // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text('John Doe',style: TextStyle(color: Colors.white,fontSize: height/42.15),),
                            Row(
                              children:  [
                                Text('0128*****34598',style: TextStyle(color: Colors.white,fontSize: width/27),),
                                SizedBox(width: width/41.1,),
                                const Icon(Icons.visibility_off,color: Colors.white,)
                              ],
                            )
                          ],
                        )),
                  ],
                )),
         SizedBox(
              height: width/82.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: width/6.85,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height/42.15),
                        border: Border.all(color: Colors.red, width: 1)),
                    child: Padding(
                      padding:  EdgeInsets.all(height/41.45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.near_me_sharp,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: width/82.2,
                          ),
                          Text(
                            'Cash Out',
                            style: TextStyle(color: Colors.red, fontSize: width/29.357),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: width/6.85,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height/42.15),
                        border: Border.all(color: Colors.red, width: 1)),
                    child: Padding(
                      padding:  EdgeInsets.all(height/42.15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const Icon(
                            Icons.flag,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: width/82.2,
                          ),
                          Text(
                            'Update Info',
                            style: TextStyle(color: Colors.red, fontSize: width/29.357),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
           SizedBox(
              height: width/41.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'Recent Transactions',
                  style: TextStyle(fontSize: height/42.15, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon:  Icon(
                      FontAwesomeIcons.xmark,
                      color: Colors.red,
                      size: height/24.1,
                    ))
              ],
            ),
             SizedBox(
              height: width/82.2,
            ),
            buildCustomStack(width, height, 'Cash out via Bkash','At 6:00 PM- 3 January 2022',1500),
            SizedBox(
              height: width/82.2,
            ),
            buildCustomStack(width, height, 'Cash out via Bkash','At 6:00 PM- 13 January 2022',1300),
          ],
        ),
      ),
    );
  }

  Stack buildCustomStack(double width, double height,String getWay,String time,num amount) {
    return Stack(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                height: width/4.11,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:const Color(0xFFD02539),
                  borderRadius: BorderRadius.circular(35),
                ),
                child:  Padding(
                  padding: EdgeInsets.all(width/34.25),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.ballot_outlined,
                        color: Colors.red,
                      ),
                    ),
                    title: Text(
                     getWay,
                      style: TextStyle(color: Colors.white, fontSize: width/22.833),
                    ),
                    subtitle: Text(
                      time,
                      style: TextStyle(color: Colors.white, fontSize: width/29.357),
                    ),
                    trailing: Text(
                      '-${amount} BDT',
                      style: TextStyle(color: Colors.white, fontSize: width/25.6875),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: width/12.08823,
                  left: -height/28.1,
                  bottom: width/12.08823,
                  child: Container(
                   // height: 5,
                    width: width/10.8157,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width/102.75),
                    ),
                  ))
            ],
          );
  }
}
