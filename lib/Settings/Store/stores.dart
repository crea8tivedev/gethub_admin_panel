import 'package:admin_panel/API%20CALL/Model/get_stores_model.dart';
import 'package:admin_panel/API%20CALL/Service/get_stores_service.dart';
import 'package:admin_panel/Provider/show_page.dart';
import 'package:admin_panel/Settings/Store/add_store.dart';
import 'package:admin_panel/Settings/Store/edit_stores.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Stores extends StatefulWidget {
  static const routeName = 'Stores';

  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    var showPage = Provider.of<ShowPage>(context);
    getStores();
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                      'Stores',
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
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddStore()));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: deviceWidth * .005,
                                  horizontal: deviceWidth * .005),
                              color: Colors.blue,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  Text(
                                    'Add Store',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: deviceWidth * .02,
                    ),
                    Table(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columnWidths: <int, TableColumnWidth>{
                        0: FlexColumnWidth(),
                        1: FixedColumnWidth(deviceWidth * .25),
                        2: FixedColumnWidth(deviceWidth * .15),
                        3: FixedColumnWidth(deviceWidth * .2),
                        4: FixedColumnWidth(deviceWidth * .15),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: <TableRow>[
                        TableRow(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                          ),
                          children: <Widget>[
                            Container(
                              padding:
                                  EdgeInsets.only(left: deviceWidth * .008),
                              alignment: Alignment.centerLeft,
                              height: deviceWidth * .025,
                              child: Text('Store Name',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: deviceWidth * .008),
                              alignment: Alignment.centerLeft,
                              height: deviceWidth * .025,
                              child: Text('City',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: deviceWidth * .008),
                              alignment: Alignment.centerLeft,
                              height: deviceWidth * .025,
                              child: Text('Post Code',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: deviceWidth * .008),
                              alignment: Alignment.centerLeft,
                              height: deviceWidth * .025,
                              child: Text(
                                'Online Fulfillment Methods',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: deviceWidth * .008),
                              alignment: Alignment.centerLeft,
                              height: deviceWidth * .025,
                              child: Text(
                                'Online',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 400,
                      child: FutureBuilder(
                        future:
                            getStores(), // a previously-obtained Future<String> or null
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          List<Widget> children;
                          if (snapshot.data == null) {
                        return Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            children = <Widget>[
                              Icon(
                                Icons.error_outline,
                                color: Colors.red,
                                size: 60,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Text('Error: ${snapshot.error}'),
                              )
                            ];
                          } else if(snapshot.data == null){
                            children = <Widget>[
                              SizedBox(
                                child: CircularProgressIndicator(),
                                width: 60,
                                height: 60,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Text('Awaiting result...'),
                              )
                            ];
                          }
                          return ListView.builder(
                              itemCount: snapshot.data.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Table(
                                  border: TableBorder.all(
                                      color: Colors.grey.shade300),
                                  columnWidths: <int, TableColumnWidth>{
                                    0: FlexColumnWidth(),
                                    1: FixedColumnWidth(deviceWidth * .25),
                                    2: FixedColumnWidth(deviceWidth * .15),
                                    3: FixedColumnWidth(deviceWidth * .2),
                                    4: FixedColumnWidth(deviceWidth * .15),
                                  },
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  children: <TableRow>[
                                    TableRow(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                      ),
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(
                                              left: deviceWidth * .008),
                                          height: deviceWidth * .025,
                                          child: InkWell(
                                              onTap: () {
                                                showPage.id =
                                                    snapshot.data[index]["id"];
                                                showPage.name = snapshot
                                                    .data[index]["name"];
                                                showPage.address = snapshot
                                                    .data[index]["address"];
                                                showPage.addressLine2 =
                                                    snapshot.data[index]
                                                        ["addressLine2"];
                                                showPage.city = snapshot
                                                    .data[index]["city"];
                                                showPage.state = snapshot
                                                    .data[index]["state"];
                                                showPage.postCode = snapshot
                                                    .data[index]["postCode"];
                                                showPage.countryId = snapshot
                                                    .data[index]["countryId"];
                                                showPage.phone = snapshot
                                                    .data[index]["phone"];
                                                showPage.operatingHours =
                                                    snapshot.data[index]
                                                        ["operatingHours"];
                                                showPage.email = snapshot
                                                    .data[index]["email"];
                                                showPage.companyName = snapshot
                                                    .data[index]["companyName"];
                                                showPage.websiteUrl = snapshot
                                                    .data[index]["websiteUrl"];
                                                showPage.gstIdNo = snapshot
                                                    .data[index]["gstIdNo"];
                                                showPage.sstIdNo = snapshot
                                                    .data[index]["sstIdNo"];
                                                showPage.businessRegistrationNo =
                                                    snapshot.data[index][
                                                        "businessRegistrationNo"];
                                                showPage.extraInfo = snapshot
                                                    .data[index]["extraInfo"];
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            EditStore()));
                                              },
                                              child: Text(
                                                '${snapshot.data[index]['name']}',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color:
                                                        Colors.blue.shade700),
                                              )),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(
                                              left: deviceWidth * .008),
                                          height: deviceWidth * .025,
                                          child: Text(
                                            '${snapshot.data[index]['city']}',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(
                                              left: deviceWidth * .008),
                                          height: deviceWidth * .025,
                                          child: Text(
                                            '${snapshot.data[index]['postCode']}',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(
                                              left: deviceWidth * .008),
                                          height: deviceWidth * .025,
                                          child: Text(
                                            '${snapshot.data[index]['extraInfo']}',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: deviceWidth * .0005,
                                                  horizontal:
                                                      deviceWidth * .0025),
                                              alignment: Alignment.centerLeft,
                                              margin: EdgeInsets.only(
                                                  left: deviceWidth * .008),
                                              color: Colors.red,
                                              child: Text(
                                                'NO',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                  ],
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
