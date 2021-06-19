import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class AccountGeneral extends StatefulWidget {
  @override
  _AccountGeneralState createState() => _AccountGeneralState();
}

class _AccountGeneralState extends State<AccountGeneral> {
  var a = "Warning: This will transfer the ownership rights of your current StoreHub account to the account owner of your choosing, You will still be able to access BackOffice with an active login";
  var b = "Warning: This will permanently remove all your transactions, shift reports, purchase orders, stock returns, stock transfers and stock takes permanently";
  var c = "Warning: With the Malaysian government zero-rating GST on 1st June 2018, you may select an option to update your price";
  var d = "Warning: This setting will activate sequential receipt numbers for all your transactions.This action cannot be reversed";
  var e = "This will make your online store inaccessible to the public";
  var f = "Disabling this will cause your receipts to stop printing the QR code on receipts and disables customers from automatically using their cashback.";








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Text(
                'General',
                style: TextStyle(fontSize: 30, color: Color(0xfff7941e)),
              ),
            ],
          ),
          Divider(),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Business name'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 498,
                        height: 34,
                        child: TextField(
                            decoration: new InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Country'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 498,
                        height: 34,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItem: true,
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            hint: "country in menu mode",
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "Brazil"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Currency'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 498,
                        height: 34,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItem: true,
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            hint: "country in menu mode",
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "Brazil"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Timezone'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 498,
                        height: 34,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItem: true,
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            hint: "country in menu mode",
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "Brazil"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Default Tax'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 498,
                        height: 34,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItem: true,
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            hint: "country in menu mode",
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "Brazil"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Display Price'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 498,
                        height: 34,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItem: true,
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            hint: "country in menu mode",
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "Brazil"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Enable Rounding'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 498,
                        height: 34,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItem: true,
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            hint: "country in menu mode",
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "Brazil"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Group Multiples of The Same Item'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 498,
                        height: 34,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItem: true,
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "Brazil"),
                      ),
                      Container(
                          width: 498,
                          child: Text('Multiple quantities of the same product will be automatically grouped together into just one item line on your register and receipt.')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Closing time of Operations'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 498,
                        height: 34,
                        child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItem: true,
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            popupItemDisabled: (String s) => s.startsWith('I'),
                            onChanged: print,
                            selectedItem: "Brazil"),
                      ),
                      Container(
                          width: 498,
                          child: Text('Selecting the closing time of operations. All reports will follow 24 hour cycle. E.g. if 5am is the closing time, the day starts from 5am util 4:59am the next calendar day.')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(children: [
                  ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text('Save')),
                  SizedBox(width: 25,),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey),
                        padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.all(8)),
                      ),
                      onPressed: (){}, child: Text('Cancel'))
                ],)
              ],
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Text(
                'Danger Zone',
                style: TextStyle(fontSize: 30, color: Color(0xfff7941e)),
              ),
            ],
          ),
          Divider(),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              width: 498,
              child: Column(
                children: [
                  ListTile(title: Text('Account Ownership Transfer'),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text('Transfer')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(a),
                  )
                ],
              ),
            )
          ],),),
          SizedBox(height: 25,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              width: 498,
              child: Column(
                children: [
                  ListTile(title: Text('Reset Account Data'),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text('Reset')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(b),
                  )
                ],
              ),
            )
          ],),),     SizedBox(height: 25,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              width: 498,
              child: Column(
                children: [
                  ListTile(title: Text('Product Price and GST Adjustment'),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text('Adjust')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(c),
                  )
                ],
              ),
            )
          ],),),     SizedBox(height: 25,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              width: 498,
              child: Column(
                children: [
                  ListTile(title: Text('Activate Sequential Receipt Numbers'),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text('Activate')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(d),
                  )
                ],
              ),
            )
          ],),),     SizedBox(height: 25,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              width: 498,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(title: Text('Unpublish Online Store'),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text('Unpublish')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(e),
                  )
                ],
              ),
            )
          ],),),     SizedBox(height: 25,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(
              width: 498,
              child: Column(
                children: [
                  ListTile(title: Text('Disable Beep Cashback'),
                    trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.check), label: Text('Unpublish')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(f),
                  )
                ],
              ),
            )
          ],),),
        ],
      ),
    );
  }
}
