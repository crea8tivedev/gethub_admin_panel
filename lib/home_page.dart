import 'package:admin_panel/Settings/Account/account_home.dart';
import 'package:admin_panel/Settings/Adds_on/adds_on.dart';
import 'package:admin_panel/Settings/Reciept_Template/reciept_template.dart';
import 'package:admin_panel/Settings/Store/stores.dart';
import 'package:admin_panel/Settings/Tax/tax.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var loyaltyExpansion = false;
  var onlineStoreExpansion = false;
  var transactionExpansion = false;
  var productsExpansion = false;
  var stockManagementExpansion = false;
  var reportExpansion = false;
  var billingExpansion = false;
  var salesExpansion = false;
  var employeeExpansion = false;
  var settingExpansion = false;
  var promotionExpansion = false;
  var subProduct = false;
  var supportExpansion = false;
var font = TextStyle(color: Colors.white);
var icon = Color(0xff969696);


var show;

  var selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
leading: Image.asset("images/logo.png"),
        actions: [
          IconButton(
              focusColor: Colors.white,
              icon: Icon(
                Icons.notifications_none,
                color: Colors.grey,
              ),
              onPressed: () {}),
          SizedBox(
            width: 15,
          ),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.help,
                color: Colors.grey,
              ),
              label: Text(
                'Help',
                style: TextStyle(color: Colors.grey),
              )),
          SizedBox(
            width: 15,
          ),
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.person, color: icon,),
                  Text('User Name', style: font,),
                  Icon(Icons.arrow_drop_down, color: icon,)
                ],
              )),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Row(children: [
        Expanded(
          child: Container(
            color: Color(0xff3d3d3d),
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              ListTile(
                dense: true,
                leading: Icon(Icons.home, color: icon,),
                title: Text('DashBoard', style: font,),
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    loyaltyExpansion = !loyaltyExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.favorite, color: icon,),
                        title: Text('Loyalty', style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Cashback Quota',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Settings',style: font,),
                        ),
                      ],
                    ),
                    isExpanded: loyaltyExpansion,
                  ),
                ],
              ),
              ListTile(
                dense: true,
                leading: Icon(Icons.qr_code_scanner_rounded, color: icon,),
                title: Text('Beep QR Order', style: font,),
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    onlineStoreExpansion = !onlineStoreExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.store_sharp, color: icon,),
                        title: Text('Online Stores',style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Checklist', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Order Management', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Store Setup', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Marketing', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Payouts', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Beep Profile', style: font,),
                        ),

                      ],
                    ),
                    isExpanded: onlineStoreExpansion,
                  ),
                ],
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    transactionExpansion = !transactionExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.store_sharp,color: icon,),
                        title: Text('Transactions',style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('All Transactions', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Returns', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Pre-Orders', style: font,),
                        ),
                      ],
                    ),
                    isExpanded: transactionExpansion,
                  ),
                ],
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    productsExpansion = !productsExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.store_sharp, color: icon,),
                        title: Text('Products', style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Manage Products', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Add Product', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Price Books', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Suppliers', style: font,),
                        ),
                      ],
                    ),
                    isExpanded: productsExpansion,
                  ),
                ],
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    stockManagementExpansion = !stockManagementExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.store_sharp, color: icon,),
                        title: Text('Stock Management', style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Supply Needs',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Purchase Orders',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Stock Return',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Stock Take',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Stock Transfer',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Audit Trail',style: font,),
                        ),
                      ],
                    ),
                    isExpanded: stockManagementExpansion,
                  ),
                ],
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    promotionExpansion = !promotionExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.store_sharp, color:icon,),
                        title: Text('Promotions', style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Manage Promotions',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Customer Display', style: font,),
                        ),
                      ],
                    ),
                    isExpanded: promotionExpansion,
                  ),
                ],
              ),
              ListTile(
                dense: true,
                leading: Icon(Icons.qr_code_scanner_rounded , color: icon,),
                title: Text('Customers', style: font,),
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    reportExpansion = !reportExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.store_sharp, color: icon,),
                        title: Text('Reports', style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ExpansionPanelList(
                          elevation: 0,
                          expansionCallback: (int index, bool isExpanded) {
                            setState(() {
                              salesExpansion = !salesExpansion;
                            });
                          },
                          children: [
                            ExpansionPanel(
                              backgroundColor:  Colors.grey[600],
                              headerBuilder: (BuildContext context, bool isExpanded) {
                                return ListTile(
                                  dense: true,
                                  title: Text('Sales'),
                                );
                              },
                              body: Column(
                                children: [
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Over Time'),
                                  ),
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Products'),
                                  ),
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Product Categories'),
                                  ),
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Variants'),
                                  ),
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('SKUs'),
                                  ),
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Employees'),
                                  ),
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Transaction Channels'),
                                  ),
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Payment Methods'),
                                  ),
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Shifts'),
                                  ),
                                ],
                              ),
                              isExpanded: salesExpansion,
                            ),
                          ],
                        ),
                        ListTile(
                          tileColor:Colors.grey[600],
                          dense: true,
                          title: Text('Loyalty'),
                        ),
                        ExpansionPanelList(
                          elevation: 0,
                          expansionCallback: (int index, bool isExpanded) {
                            setState(() {
                              subProduct = !subProduct;
                            });
                          },
                          children: [
                            ExpansionPanel(
                              backgroundColor:Colors.grey[600],
                              headerBuilder: (BuildContext context, bool isExpanded) {
                                return ListTile(
                                  dense: true,
                                  title: Text('Products'),
                                );
                              },
                              body: Column(
                                children: [
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Stock Value'),
                                  ),
                                  ListTile(
                                    tileColor: Colors.grey[100],
                                    dense: true,
                                    title: Text('Pre-Ordered Items'),
                                  ),
                                ],
                              ),
                              isExpanded: subProduct,
                            ),
                          ],
                        ),
                        ListTile(
tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Promotions'),
                        ),
                        ListTile(
tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('GST Audit File (GAF)'),
                        ),

                      ],
                    ),
                    isExpanded: reportExpansion,
                  ),
                ],
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    employeeExpansion = !employeeExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.store_sharp, color: icon,),
                        title: Text('Employees', style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          tileColor :Colors.grey[600],
                          dense: true,
                          title: Text('Manage Employees',style: font,),
                        ),
                        ListTile(
                          tileColor :Colors.grey[600],
                          dense: true,
                          title: Text('Timesheets',style: font,),
                        ),
                        ListTile(
                          tileColor :Colors.grey[600],
                          dense: true,
                          title: Text('Employee Performance',style: font,),
                        ),
                        ListTile(
                          tileColor :Colors.grey[600],
                          dense: true,
                          title: Text('Activity Log',style: font,),
                        ),

                      ],
                    ),
                    isExpanded: employeeExpansion,
                  ),
                ],
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    settingExpansion = !settingExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.settings,color: icon,),
                        title: Text('Settings', style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          onTap: (){
                            setState(() {
                              show = AccountHome();
                            });
                          },
                          tileColor :Colors.grey[600],
                          dense: true,
                          title: Text('Account',style: font,),
                        ),
                        ListTile(
                          onTap: (){
                      setState(() {
                        show = Tax();
                      });
                          },
                          tileColor :Colors.grey[600],
                          dense: true,
                          title: Text('Tax', style: font,),
                        ),
                        ListTile( tileColor :Colors.grey[600],
                          dense: true,
                          title: Text('Payment Option',style: font,),
                        ),
                        ExpansionPanelList(
                          elevation: 0,
                          expansionCallback: (int index, bool isExpanded) {
                            setState(() {
                              billingExpansion = !billingExpansion;
                            });
                          },
                          children: [
                            ExpansionPanel(
                              backgroundColor: Colors.grey[600],
                              headerBuilder: (BuildContext context, bool isExpanded) {
                                return ListTile(
                                  dense: true,
                                  title: Text('Billing',style: font,),
                                );
                              },
                              body: Column(
                                children: [
                                  ListTile(
                                    tileColor :Colors.grey[500],
                                    dense: true,
                                    title: Text('Plans',style: font,),
                                  ),
                                  ListTile(
                                    tileColor :Colors.grey[500],
                                    dense: true,
                                    title: Text('Sms',style: font,),
                                  ),
                                ],
                              ),
                              isExpanded: billingExpansion,
                            ),
                          ],
                        ),
                        ListTile(
                          onTap: (){
                            setState(() {
                              show = Stores();
                            });
                          },
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Stores', style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Bank Account',style: font,),
                        ),
                        ListTile(
                          onTap: (){
                            setState(() {
                              show = ReceiptTemplates();
                            });
                          },
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Receipt Templates',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('iPad Registers',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('iPad Layouts',style: font,),
                        ),
                        ListTile(
        hoverColor: Colors.deepOrange,
                          onTap: (){
                            setState(() {
                              show = CustomerDisplay();
                            });
                          },
                          // tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Add-Ons',style: font,),
                        ),
                      ],
                    ),
                    isExpanded: settingExpansion,
                  ),
                ],
              ),
              ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    supportExpansion = !supportExpansion;
                  });
                },
                children: [
                  ExpansionPanel(
                    backgroundColor: Color(0xff3d3d3d),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        dense: true,
                        leading: Icon(Icons.store_sharp, color: icon,),
                        title: Text('Support', style: font,),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Help',style: font,),
                        ),
                        ListTile(
                          tileColor: Colors.grey[600],
                          dense: true,
                          title: Text('Feature Request', style: font,),
                        ),
                      ],
                    ),
                    isExpanded: supportExpansion,
                  ),
                ],
              ),
            ],),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: show == null ? Stores() : show,
          ),
        ),
      ],),
    );
  }
}
