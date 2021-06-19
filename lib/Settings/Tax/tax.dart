  import 'package:flutter/material.dart';

class Tax extends StatelessWidget {
  static const routeName = 'Tax';
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
          Text('Tax Codes',style: TextStyle(fontSize: 30,color: Colors.orange),),
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
                      Text('Tax Codes',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: deviceWidth* .005,horizontal: deviceWidth* .005),
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Icon(Icons.add,color: Colors.white,size: 16,),
                      Text('Add Tax Code',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
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
      0: FlexColumnWidth(),
      1: FixedColumnWidth(deviceWidth* .3),
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
            child: Text('Tax Code Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.only(left: deviceWidth* .008),
            alignment: Alignment.centerLeft,
            height: deviceWidth* .025,
            child: Text('Tax Rate',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.only(left: deviceWidth* .008),
            alignment: Alignment.centerLeft,
            height: deviceWidth* .025,
            child: Text('Actions',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
            padding: EdgeInsets.only(left: deviceWidth* .008),
            height: deviceWidth* .025,
            child: Text('SR',style: TextStyle(fontSize: 16),),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: deviceWidth* .008),
            height: deviceWidth* .025,
            child: Text('0%',style: TextStyle(fontSize: 16),),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical:deviceWidth* .0005,horizontal: deviceWidth* .005),
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: deviceWidth* .008),
                 color: Colors.grey.shade300,
                child: Row(
                  children: [
                    Icon(Icons.edit,color: Colors.black54,size: 16,),
                    Text('Edit',style: TextStyle(fontSize: 16,color: Colors.black54,),),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(vertical:deviceWidth* .0005,horizontal: deviceWidth* .005),
                margin: EdgeInsets.only(left: deviceWidth* .008),
                color: Colors.grey.shade300,
                child: Row(
                  children: [
                    Icon(Icons.delete,color: Colors.black54,size: 16,),
                    Text('Delete',style: TextStyle(fontSize: 16,color: Colors.black54,),),
                  ],
                ),
              ),
            ],
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


