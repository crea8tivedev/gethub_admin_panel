import 'package:admin_panel/Settings/Account/Tab/gernal_tab.dart';
import 'package:admin_panel/Settings/Account/Tab/store_,management_tab.dart';
import 'package:flutter/material.dart';

class AccountHome extends StatefulWidget {
  @override
  _AccountHomeState createState() => _AccountHomeState();
}

class _AccountHomeState extends State<AccountHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Account Settings',
                      style: TextStyle(fontSize: 30, color: Color(0xfff7941e)),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey.shade300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
                                  fontSize: 16, fontWeight: FontWeight.w500),
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
                              'Accounts',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: DefaultTabController(
                    length: 3,
                    child:  Scaffold(
                      appBar:  AppBar(
                        backgroundColor: Colors.white,
                        flexibleSpace:  Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                             TabBar(
                           labelColor: Colors.deepOrange,
                              unselectedLabelColor: Colors.grey,
                              indicatorColor: Colors.deepOrange,
                              tabs: [
                                new Tab(child: Text('General'),),
                                new Tab(child: Text('Store Management'),),
                                new Tab(child: Text('F & B'),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      body: TabBarView(children: [
                        AccountGeneral(),
                        AccountStoreManagement(),
                        Text('More Management'),
                      ],),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
