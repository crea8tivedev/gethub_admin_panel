import 'package:admin_panel/API%20CALL/Model/receipt_template_model.dart';
import 'package:admin_panel/API%20CALL/Model/update_store_model.dart';
import 'package:admin_panel/API%20CALL/Service/get_reciept_template_service.dart';
import 'package:admin_panel/API%20CALL/Service/update_store_service.dart';
import 'package:admin_panel/Provider/show_page.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class General extends StatefulWidget {


  @override
  _GeneralState createState() => _GeneralState();
}

class _GeneralState extends State<General> {


  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ShowPage>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final success = SnackBar(content: Text('Store Updated Successfully'));
    final fail = SnackBar(content: Text('Something went wrong'));


    var storeNameController = TextEditingController(text: data.name);
    var streetAddressController = TextEditingController(text: data.address);
    var addressController = TextEditingController(text: data.addressLine2);
    var cityController = TextEditingController(text: data.city);
    var stateController = TextEditingController(text:data.state);
    var postCodeController = TextEditingController(text: data.postCode);
    var countryController = TextEditingController(text: data.countryId);
    var phoneController = TextEditingController(text: data.phone);
    var operationHoursController = TextEditingController(text: data.operatingHours);
    var emailController = TextEditingController(text: data.email);
    var websiteController = TextEditingController(text: data.websiteUrl);
    var companyNameController = TextEditingController(text: data.companyName);
    var gstIdController = TextEditingController(text: data.gstIdNo);
    var sstIdController = TextEditingController(text: data.sstIdNo);
    var brnController = TextEditingController(text: data.businessRegistrationNo);

    var extraInfoController = TextEditingController(text: data.extraInfo);
    var templateId;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: deviceWidth * .04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'General',
                  style: TextStyle(
                      fontSize: 25, color: Colors.orange),
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: deviceWidth * .01,
                ),
                Text(
                  'Store Name',
                  style: TextStyle(
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: deviceWidth* .005,),
                Container(
                  width: deviceWidth* .4,
                  height: deviceWidth* .025,
                  decoration: BoxDecoration(
                      border:
                      Border.all(color: Colors.grey.shade300)),
                  child: TextField(
controller: storeNameController,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(height: deviceWidth* .01,),
                Text(
                  'Street Address',
                  style: TextStyle(
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: deviceWidth* .005,),
                Container(
                  width: deviceWidth* .4,
                  height: deviceWidth* .025,
                  decoration: BoxDecoration(
                      border:
                      Border.all(color: Colors.grey.shade300)),
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
                SizedBox(height: deviceWidth* .01,),
                Text(
                  'Address Line2',
                  style: TextStyle(
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: deviceWidth* .005,),
                Container(
                  width: deviceWidth* .4,
                  height: deviceWidth* .025,
                  decoration: BoxDecoration(
                      border:
                      Border.all(color: Colors.grey.shade300)),
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
                ),
                SizedBox(height: deviceWidth* .01,),
                Text(
                  'City',
                  style: TextStyle(
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: deviceWidth* .005,),
                Container(
                  width: deviceWidth* .4,
                  height: deviceWidth* .025,
                  decoration: BoxDecoration(
                      border:
                      Border.all(color: Colors.grey.shade300)),
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
                SizedBox(height: deviceWidth* .01,),
                Text(
                  'State',
                  style: TextStyle(
                      fontWeight: FontWeight.w600),
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
          UpdateStoreModal modal =  await updateStore(
                          data.id,
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
                        if(modal.updateStore.message == "Success"){
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
        ],
      ),
    );
  }
}
