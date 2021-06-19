import 'package:admin_panel/API%20CALL/Model/create_store_model.dart';
import 'package:admin_panel/API%20CALL/Model/receipt_template_model.dart';
import 'package:admin_panel/API%20CALL/Service/add_stores_service.dart';
import 'package:admin_panel/API%20CALL/Service/get_reciept_template_service.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class AddStore extends StatefulWidget {
  @override
  _AddStoreState createState() => _AddStoreState();
}

class _AddStoreState extends State<AddStore> {
  var storeNameController = TextEditingController();
  var streetAddressController = TextEditingController();
  var addressController = TextEditingController();
  var cityController = TextEditingController();
  var stateController = TextEditingController();
  var postCodeController = TextEditingController();
  var countryController = TextEditingController();
  var phoneController = TextEditingController();
  var operationHoursController = TextEditingController();
  var emailController = TextEditingController();
  var websiteController = TextEditingController();
  var companyNameController = TextEditingController();
  var gstIdController = TextEditingController();
  var sstIdController = TextEditingController();
  var brnController = TextEditingController();
  var receiptTemplateController = TextEditingController();
  var extraInfoController = TextEditingController();

  var templateId;


  @override
  Widget build(BuildContext context) {
    final success = SnackBar(content: Text('Store Created'));
    final fail = SnackBar(content: Text('Something went wrong'));
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return SafeArea(
            child: Scaffold(
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
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(deviceWidth * .01),
                  width: deviceWidth,
                  height: deviceHeight,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add Stores',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.orange,
                              fontWeight: FontWeight.w200),
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
                                      'Add Stores',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: deviceWidth * .001),

                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                //
                                color: Colors.black38,
                                width: 2.0,
                              ),
                              top: BorderSide(
                                //
                                color: Colors.black38,
                                width: 2.0,
                              ),
                              bottom: BorderSide(
                                //
                                color: Colors.black38,
                                width: 2.0,
                              ),
                              right: BorderSide(
                                //
                                color: Colors.black38,
                                width: 2.0,
                              ),
                            ),
                          ),
                          //  margin: EdgeInsets.only(left: deviceWidth * .008),
                          alignment: Alignment.centerLeft,
                          height: deviceWidth * .025,
                          child: Text('General',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black38)),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          color: Colors.blue[100],
                          child: Row(
                            children: [
                              Text(
                                  "You may manage cashier access and table layout in this store after the store is added.")
                            ],
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
                            "General",
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
                        Text(
                          'Store Name',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: storeNameController,
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: "Required",
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
                          'Street Address',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: streetAddressController,
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
                          'Address Line2',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: addressController,
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ), //start
                        SizedBox(
                          height: deviceWidth * .01,
                        ),
                        Text(
                          'City',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: cityController,
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
                          'State',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),


                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: stateController,
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
                          'Post Code',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: postCodeController,
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
                          'Country',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: countryController,
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
                          'Phone',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: phoneController,
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
                          'Operation Hours',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: operationHoursController,
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
                          'Email',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: emailController,
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
                          'Website',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: websiteController,
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
                          'Company Name',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: companyNameController,
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
                          'GST id No.',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: gstIdController,
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
                          'SST id No',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: sstIdController,
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
                          'Business Registration Number(BRN)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .025,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: brnController,
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
                          'Recipt Template',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        FutureBuilder<ReceiptTemplateModal>(
                          future: getReceiptTemplate(), // a previously-obtained Future<String> or null
                          builder: (BuildContext context, AsyncSnapshot snapshot) {
                            List<Widget> children;
                            if (snapshot.hasData) {
                              children = <Widget>[
                                Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.green,
                                  size: 60,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Text('Result: ${snapshot.data}'),
                                )
                              ];
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
                            } else {
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
                            var item = <String>[];
                            for(var i = 0; i <snapshot.data.getReceiptTemplates
                                .data.length; i++){
                              item.add(snapshot.data.getReceiptTemplates
                                  .data[i].name);
                            }
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 498,
                                  height: 34,
                                  child: DropdownSearch<String>(
                                    dropdownButtonBuilder: (context){
                                      return Text('');
                                    },
                                      mode: Mode.MENU,
                                      showSelectedItem: true,
                                      items: item,
                                      popupItemDisabled: (String s) =>
                                          s.startsWith('I'),
                                      onChanged: (value){
                                      templateId = snapshot.data.getReceiptTemplates.data[item.indexOf(value)].id;
                                      },
                                      selectedItem: ""),
                                ),
                              ],
                            );
                          },
                        ),

                        SizedBox(
                          height: deviceWidth * .01,
                        ),
                        Text(
                          'Extra Information',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: deviceWidth * .005,
                        ),
                        Container(
                          width: deviceWidth * .4,
                          height: deviceWidth * .050,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                          child: TextField(
                            controller: extraInfoController,
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
                          height: 3,
                        ),
                        Text(
                            "Extra information will be printed out at the bottom of receipt"),

                        Container(
                          height: 25,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(
                              vertical: deviceWidth * .0005,
                              horizontal: deviceWidth * .005),
                          margin: EdgeInsets.only(left: deviceWidth * .008),
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () async {
                            CreateStoreModel modal = await addStores(
                                    storeNameController.text,
                                    streetAddressController.text,
                                    addressController.text,
                                    cityController.text,
                                    stateController.text,
                                    postCodeController.text,
                                    templateId,
                                    countryController.text,
                                    phoneController.text,
                                    operationHoursController.text,
                                    emailController.text,
                                    companyNameController.text,
                                    websiteController.text,
                                    gstIdController.text,
                                    sstIdController.text,
                                    brnController.text,
                                    extraInfoController.text);
                            if(modal.createStore.message == "Success"){
                              ScaffoldMessenger.of(context).showSnackBar(success);
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(fail);
                            }
                              },
                              child: Container(
                                height: 35,
                                width: 77,
                                padding: EdgeInsets.symmetric(
                                    vertical: deviceWidth * .0005,
                                    horizontal: deviceWidth * .005),
                                alignment: Alignment.centerLeft,
                                //margin: EdgeInsets.only(left: deviceWidth * .008),
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.save_alt,
                                      color: Colors.black54,
                                      size: 16,
                                    ),
                                    Text(
                                      'Save',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 77,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(
                                  vertical: deviceWidth * .0005,
                                  horizontal: deviceWidth * .005),
                              margin: EdgeInsets.only(left: deviceWidth * .008),
                              color: Colors.grey.shade300,
                              child: Row(
                                children: [
                                  Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
