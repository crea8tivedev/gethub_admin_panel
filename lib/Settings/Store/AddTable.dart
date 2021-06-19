import 'package:admin_panel/API%20CALL/Model/create_store_table_model.dart';
import 'package:admin_panel/API%20CALL/Service/create_Store_Table_service.dart';
import 'package:admin_panel/Provider/show_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTable extends StatelessWidget {
  static const routeName = 'AddTable';

  var capacityController = TextEditingController();
  var tableNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ShowPage>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;


    final success = SnackBar(content: Text('Table Created Successfully'));
    final fail = SnackBar(content: Text('Something went Wrong'));
    return Container(
      child: AlertDialog(
          titlePadding: EdgeInsets.zero,
          title: Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey.shade300))),
            padding: EdgeInsets.symmetric(
                vertical: deviceWidth * .01, horizontal: deviceWidth * .01),
            width: deviceWidth * .5,
            child: Text(
              'Add New Table',
              style: TextStyle(fontSize: 16),
            ),
          ),
          content: Container(
              // padding: EdgeInsets.symmetric(vertical: deviceWidth* .01,horizontal: deviceWidth* .01),
              alignment: Alignment.topLeft,
              height: deviceHeight * .45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: deviceWidth * .01,
                  ),
                  Text(
                    'Table Name',
                  ),
                  SizedBox(
                    height: deviceWidth * .005,
                  ),
                  Container(
                    height: deviceWidth * .025,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300)),
                    child: TextField(
                      controller: tableNameController,
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
                    height: deviceWidth * .01,
                  ),
                  Text(
                    'Seating Capacity',
                  ),
                  SizedBox(
                    height: deviceWidth * .005,
                  ),
                  Container(
                    height: deviceWidth * .025,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300)),
                    child: TextField(
                      controller: capacityController,
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
                    height: deviceWidth * .05,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: deviceWidth * .01,
                        vertical: deviceWidth * .005),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * .01,
                                vertical: deviceWidth * .005),
                            child: Text('Cancel'),
                          ),
                        ),
                        SizedBox(
                          width: deviceWidth * .005,
                        ),
                        InkWell(
                          onTap: () async {
                    CreateStoreTableModel model =  await createStoreTable(tableNameController.text, data.id, int.parse(capacityController.text));
                        if(model.createStoreTable.message == "Success"){
                          ScaffoldMessenger.of(context).showSnackBar(success);
                          Navigator.pop(context);
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(fail);
                        }

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * .01,
                                vertical: deviceWidth * .005),
                            color: Colors.blue,
                            child: Text('Save'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
