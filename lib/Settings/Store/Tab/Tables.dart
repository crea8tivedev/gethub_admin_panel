import 'package:admin_panel/API%20CALL/Service/get_stores_table_service.dart';
import 'package:admin_panel/Provider/show_page.dart';
import 'package:admin_panel/Settings/Store/AddTable.dart';
import 'package:admin_panel/Settings/Store/edit_table.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'AddTable.dart';

class Tables extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    var data = Provider.of<ShowPage>(context);
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              vertical: deviceWidth * .01),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.blue.shade300,
                    height: deviceWidth* .03,
                    width: 5,
                  ),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left:deviceWidth* .01),
                      alignment: Alignment.centerLeft,
                      height: deviceWidth* .03,
                      color: Colors.lightBlue.shade50,
                      child:
                      RichText(
                        text: TextSpan(
                          style:TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: "Set up table layouts if you use them in your F&B flow. Read more "),
                            TextSpan(text: "here", style: new TextStyle(color: Colors.blue)),
                            TextSpan(text: "."),

                          ],
                        ),
                      ),


                    ),
                  )
                ],
              ),
              SizedBox(height: deviceWidth* .01,),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade300))
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          color: Colors.orange,
                          height: deviceWidth* .0211,
                          width: 3,
                        ),
                        InkWell(onTap: (){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AddTable();
                            },
                          );
                        },
                          child: Container(
                            // height: deviceWidth* .025,
                            padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01,vertical: deviceWidth* .005),
                            color: Colors.grey.shade300,
                            child: Text('Add Table'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: deviceWidth* .005,),
                    Row(
                      children: [
                        Container(
                          color: Colors.orange,
                          height: deviceWidth* .0211,
                          width: 3,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TableLayout()));
                          },
                          child: Container(
                            // height: deviceWidth* .025,
                            padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01,vertical: deviceWidth* .005),
                            color: Colors.grey.shade300,
                            child: Text('Edit Table Layout'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: deviceWidth* .0175,),
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
                        child: Text('Table Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: deviceWidth* .008),
                        alignment: Alignment.centerLeft,
                        height: deviceWidth* .025,
                        child: Text('Seating Capacity',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: deviceWidth* .008),
                        alignment: Alignment.centerLeft,
                        height: deviceWidth* .025,
                        child: Text('Actions',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 400,
                child: FutureBuilder(
                  future:
                  getStoresTables(1, 20, data.id), // a previously-obtained Future<String> or null
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
                                  color: Colors.grey.shade100,
                                ),
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(left: deviceWidth* .008),
                                    height: deviceWidth* .025,
                                    child: Text('${snapshot.data[index]["name"]}',style: TextStyle(fontSize: 16),),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(left: deviceWidth* .008),
                                    height: deviceWidth* .025,
                                    child: Text('${snapshot.data[index]["capacity"]}',style: TextStyle(fontSize: 16),),
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
                          );
                        });
                  },
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
