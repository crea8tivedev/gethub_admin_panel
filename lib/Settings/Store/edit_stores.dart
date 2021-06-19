import 'package:admin_panel/Provider/show_page.dart';
import 'package:admin_panel/Settings/Store/Tab/General.dart';
import 'package:admin_panel/Settings/Store/Tab/Tables.dart';
import 'package:admin_panel/Settings/Store/Tab/access_control.dart';
import 'package:admin_panel/Settings/Store/Tab/beep_qr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'Tables.dart';
// import 'General.dart';

class EditStore extends StatefulWidget {
 static const routeName = 'EditStore';

  @override
  _EditStoreState createState() => _EditStoreState();
}

class _EditStoreState extends State<EditStore> {
  bool checkedValue = true;
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
var data = Provider.of<ShowPage>(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return SafeArea(
            child: DefaultTabController(
              initialIndex: 0,
              length: 5,
              child: Scaffold(
                floatingActionButton: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: deviceWidth * .0025,
                      vertical: deviceWidth * .0075),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  width: deviceWidth * .075,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.messenger_outline),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Help',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                body: Container(
                  padding: EdgeInsets.all(deviceWidth * .01),
                  width: deviceWidth,
                  height: deviceHeight,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Edit Store - ${data.name}',
                          style: TextStyle(fontSize: 30, color: Colors.orange),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.grey.shade300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 8),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.grey.shade700,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Dashboard',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.grey.shade700,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Stores',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.grey.shade700,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Edit Stores',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey))),
                          child: Row(
                            children: [
                              Expanded(
                                child: TabBar(
                                  unselectedLabelStyle: TextStyle(),
                                  isScrollable: false,
                                  // labelPadding: EdgeInsets.symmetric(vertical: deviceWidth* .005,horizontal: deviceWidth* .005),
                                  indicator: BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                              color: Colors.orange, width: 3),
                                          left: BorderSide(color: Colors.grey),
                                          right: BorderSide(color: Colors.grey),
                                          bottom: BorderSide.none)),
                                  labelColor: Colors.black,
                                  labelStyle: TextStyle(fontSize: 16),
                                  tabs: <Widget>[
                                    Tab(
                                      text: 'General',
                                    ),
                                    Tab(
                                      text: 'Cashier Access Control',
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Tables',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: deviceWidth * .001,
                                              horizontal: deviceWidth * .004),
                                          color: Colors.orangeAccent,
                                          child: Text(
                                            'beta',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                    Tab(
                                      text: 'Sell Online',
                                    ),
                                    Tab(
                                      text: 'Beep QR Ordering',
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: deviceWidth * .4,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: deviceHeight * .75,
                          child: TabBarView(
                            children: <Widget>[
                              General(),
                              AccessControl(),
                              Tables(),
                              Container(
        padding: EdgeInsets.symmetric(
        vertical: deviceWidth * .04),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
        'Sell Online',
        style: TextStyle(
        fontSize: 25, color: Colors.orange),
        ),
        Divider(
        color: Colors.grey.shade300,
        ),
        SizedBox(
        height: deviceWidth * .01,
        ),
          Row(
            children: [
              Checkbox(

                  value: checkedValue, onChanged: (newValue){
                setState(() {
                  checkedValue = newValue;
                });

              }),
              Text("Sell this store's inventory online"),
            ],
          ),
          SizedBox(
            height: deviceWidth * .03,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth* .0075,vertical: deviceWidth* .005),
            color: Colors.grey.shade200,
            height: deviceWidth* .05,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01,vertical: deviceWidth* .005),
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Icon(Icons.check,color: Colors.white,size: 14,),
                      SizedBox(width: deviceWidth* .0025,),
                      Text('Save',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                SizedBox(width: deviceWidth* .005,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01,vertical: deviceWidth* .005),
                  color: Colors.grey.shade300,
                  child: Text('Cancel'),
                )
              ],
            ),
          )
        ]
        )
          ),
                              BeepQr(),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            body: Text('Please run the app in chrome'),
          );
        }
      },
    );
  }
}


