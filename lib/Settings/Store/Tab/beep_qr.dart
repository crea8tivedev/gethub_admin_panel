import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BeepQr extends StatefulWidget {
  @override
  _BeepQrState createState() => _BeepQrState();
}

class _BeepQrState extends State<BeepQr> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(deviceWidth * .01),
                  width: deviceWidth,
                  height: deviceHeight,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: deviceWidth * .001),
                          alignment: Alignment.centerLeft,
                          height: deviceWidth * .025,
                          child: Text(
                            "Beep QR Ordering",
                            style: TextStyle(
                                color: Colors.orange[300],
                                fontSize: 28,
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.blue[100],
                          child: Row(
                            children: [
                              Text(
                                  "To get started, please ensure that you have read the help article"),
                              Text(
                                "  help article",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Request Submitted',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 28),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Text(
                          "Our team has received your request, it will take roughly 1 week for us to process and deliver the QR stands to you.",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Text(
                          "In the meantime, you can get started by following the steps below:",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        SizedBox(
                          height: deviceWidth * .010,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Step 1: Go to" + "  ",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                          TextSpan(
                              text: "Store Appearance",
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline)),
                          TextSpan(
                              text: " " + "to create your menu.",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        ])),
                        SizedBox(
                          height: deviceWidth * .010,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Step 2: Fill in your" + "  ",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                          TextSpan(
                              text: " Bank Details",
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline)),
                        ])),
                        SizedBox(
                          height: deviceWidth * .010,
                        ),
                        Text(
                          "Step 3: Scan the QR code with camera or scanner app to view your menu",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        SizedBox(
                          height: deviceHeight * .010,
                        ),
                        Container(
                          child: Image.asset(
                            'assets/qr1.png',
                            width: 160,
                            height: 160,
                          ),
                        ),
                        SizedBox(
                          height: deviceWidth * .01,
                        ),
                        Container(
                          color: Colors.grey.shade200,
                          padding: EdgeInsets.only(left: deviceWidth * .001),
                          alignment: Alignment.centerLeft,
                          height: deviceWidth * .050,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 35,
                              width: 120,
                              padding:
                                  EdgeInsets.only(top: deviceHeight * .010),
                              margin: EdgeInsets.only(left: deviceWidth * .003),
                              color: Colors.blue,
                              child: Text(
                                "New Request",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: deviceWidth * .001),
                          alignment: Alignment.centerLeft,
                          height: deviceWidth * .025,
                          child: Text(
                            "Submitted Request",
                            style: TextStyle(
                                color: Colors.orange[300],
                                fontSize: 28,
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Table(
                          border: TableBorder.all(color: Colors.grey.shade300),
                          columnWidths: <int, TableColumnWidth>{
                            0: FlexColumnWidth(),
                            1: FixedColumnWidth(deviceWidth * .5),
                            2: FixedColumnWidth(deviceWidth * .15),
                            3: FixedColumnWidth(deviceWidth * .10),
                            4: FixedColumnWidth(deviceWidth * .10),
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
                                  width: deviceWidth * .25,
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * .008),
                                  alignment: Alignment.centerLeft,
                                  height: deviceWidth * .025,
                                  child: Text('Submitted Time',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                Container(
                                  width: deviceWidth * .25,
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * .008),
                                  alignment: Alignment.centerLeft,
                                  height: deviceWidth * .025,
                                  child: Text('Design Type',
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
                                    'Table Numbering',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * .008),
                                  alignment: Alignment.centerLeft,
                                  height: deviceWidth * .025,
                                  child: Text(
                                    'Status',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                              ),
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * .008),
                                  height: deviceWidth * .025,
                                  child: Text(
                                    'July 30th 2020, 8:37:00 pm',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * .008),
                                  height: deviceWidth * .025,
                                  child: Text(
                                    'Standard',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * .008),
                                  height: deviceWidth * .025,
                                  child: Text(
                                    'Counter Service',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding:
                                      EdgeInsets.only(left: deviceWidth * .008),
                                  height: deviceWidth * .025,
                                  child: Text(
                                    'Success',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Page"),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: deviceWidth * .0015,
                                  horizontal: deviceWidth * .0015),
                              child: Icon(Icons.arrow_back_ios),
                              color: Colors.grey.shade300,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                              width: deviceWidth * .020,
                              height: deviceWidth * .020,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: deviceWidth * .0015,
                                  horizontal: deviceWidth * .0015),
                              child: Icon(Icons.arrow_forward_ios),
                              color: Colors.grey.shade300,
                            ),
                            Text(" " + "of 1|View" + " "),
                            Container(
                              height: 40,
                              width: 90,
                              child: DropdownButton<String>(
                                value: '100',
                                elevation: 16,
                                icon: Icon(Icons.arrow_drop_down_circle),
                                isExpanded: true,
                                items:
                                    <String>['100', '50', '200', '10'].map((e) {
                                  return DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                            Text(" " + "records|Found total 1 records")
                          ],
                        ),
                        SizedBox(
                          height: deviceWidth * .01,
                        ),
                      ],
                    ),
                  ),
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
