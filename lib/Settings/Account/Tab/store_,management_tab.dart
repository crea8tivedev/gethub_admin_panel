import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class AccountStoreManagement extends StatefulWidget {
  @override
  _AccountStoreManagementState createState() => _AccountStoreManagementState();
}

class _AccountStoreManagementState extends State<AccountStoreManagement> {
  String b =
      "This setting allows you to fix the supplier price used by stores to make purchase orders. Click here to learn more.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Text(
                'Store Management',
                style: TextStyle(fontSize: 30, color: Color(0xfff7941e)),
              ),
            ],
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
                  child: Column(
                    children: [
                      StreamBuilder<Object>(
                        stream: null,
                        builder: (context, snapshot) {
                          return Column(
                            children: [
                              DropdownSearch<String>(
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
                            ],
                          );
                        }
                      ),
                      Text('This setting allows you to fix the supplier price used by stores to make purchase orders. Click here to learn more.')
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
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
    );
  }
}
