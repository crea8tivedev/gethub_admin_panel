import 'package:flutter/material.dart';

class ReceiptTemplates extends StatelessWidget {
  static const routeName = 'ReceiptTemplates';
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return SafeArea(
            child: Scaffold(
              floatingActionButton: Container(
                padding: EdgeInsets.symmetric(horizontal: deviceWidth*.0025,vertical: deviceWidth* .0075),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)
                ),
                width: deviceWidth* .075,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.messenger_outline),
                    SizedBox(width: 8,),
                    Text('Help',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ],
                ),
              ),
              body: Container(
                padding: EdgeInsets.all(deviceWidth* .01),
                width: deviceWidth,
                height: deviceHeight,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Receipt Templates',style: TextStyle(fontSize: 30,color: Colors.orange),),
                    SizedBox(height: 10,),
                    Container(

                      color: Colors.grey.shade300,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                            child: Row(
                              children: [
                                Icon(Icons.home,color: Colors.grey.shade700,size: 16,),
                                SizedBox(width: 10,),
                                Text('Dashboard',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                SizedBox(width: 10,),
                                Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade700,size: 12,),
                                SizedBox(width: 10,),
                                Text('Receipt Templates',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: deviceWidth* .005,horizontal: deviceWidth* .005),
                            color: Colors.blue,
                            child: Row(
                              children: [
                                Icon(Icons.add,color: Colors.white,size: 16,),
                                Text('Add Receipt Templates',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Table(
                      border: TableBorder.all(color: Colors.grey.shade300),
                      columnWidths: <int, TableColumnWidth>{
                        0: FixedColumnWidth(deviceWidth* .2),
                        1: FlexColumnWidth(),
                        2: FixedColumnWidth(deviceWidth* .2),
                      },
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: <TableRow>[
                        TableRow(

                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                          ),
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: deviceWidth* .008),
                              alignment: Alignment.centerLeft,
                              height: deviceWidth* .025,
                              child: Text('Receipt Template Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: deviceWidth* .008),
                              alignment: Alignment.centerLeft,
                              height: deviceWidth* .025,
                              child: Text('Assigned Stores',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: deviceWidth* .008),
                              alignment: Alignment.centerLeft,
                              height: deviceWidth* .025,
                              child: Text('Is Default',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        TableRow(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                          ),
                          children: <Widget>[
                            Container(
                              height: deviceWidth* .04,
                               alignment: Alignment.topLeft,
                              margin: EdgeInsets.all(deviceWidth* .008),
                              child: Text('Sree Biryani.com',style: TextStyle(fontSize: 16,color: Colors.blue),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(deviceWidth* .008),
                              child: Text('SREE BIRYANI.COM BRICKFIELDS\nSree Biryani.com (Petaling Jaya)\nDigital Store',style: TextStyle(fontSize: 16),),
                            ),
                            Container(
                              height: deviceWidth* .04,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.all(deviceWidth* .008),
                              child: Icon(Icons.clear,size: 16,),
                            ),
                          ],
                        ),

                      ],
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
