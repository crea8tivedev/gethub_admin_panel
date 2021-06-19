import 'package:flutter/material.dart';

class AccessControl extends StatefulWidget {
  @override
  _AccessControlState createState() => _AccessControlState();
}

class _AccessControlState extends State<AccessControl> {
  String dropdownValue = 'Any Cashier';
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Container(
          // height: deviceHeight,
          padding: EdgeInsets.symmetric(
              vertical: deviceWidth * .04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cashier Access Control',
                style: TextStyle(
                    fontSize: 25, color: Colors.orange),
              ),
              Divider(
                color: Colors.grey.shade300,
              ),

              SizedBox(
                height: deviceWidth * .01,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delete item from a New Order',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),


                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .01,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delete Item from a Saved Open\nOrder',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),

                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access','Disable']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .01,
              ),
              RichText(
                text: TextSpan(
                  style:TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey.shade700,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "* Please upgrade to "),
                    TextSpan(text: "StoreHub App (v2.20.0) or above ", style: new TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "to support eparated access\ncontrols to delete items before and after orders are saved")
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .005,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Refund',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),

                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access','Disable']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .01,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cancel',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),

                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access','Disable']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .01,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),

                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access','Disable']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .01,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Re-print/Re-send Receipt',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),

                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access','Disable']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .01,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Open/Close Shift',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),

                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access','Disable']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .01,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'View/Manage Transactions',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),

                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access','Disable']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),



              SizedBox(
                height: deviceWidth * .01,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Open Cash Drawer When\nOpening and Closing shift',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),

                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access','Disable']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .01,
              ),
              Container(
                width: deviceWidth* .4,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Print shift report after closing\nshift',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: deviceWidth* .25,
                      height: deviceWidth* .025,
                      padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)),

                      child: DropdownButton<String>(
                        hint: Text('Any Cashier'),
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(fontWeight: FontWeight.w600),

                        underline: Container(color: Colors.transparent,),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;

                          });
                        },
                        items: <String>['Any Cashier','Require Manager Access','Disable']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),

                  SizedBox(
                  height: deviceWidth * .025,
        ),
        Container(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth* .0075,vertical: deviceWidth* .005),
        color: Colors.grey.shade200,
        height: deviceWidth* .05,
        child: Row(
        children: [
        Container(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth* .0075,vertical: deviceWidth* .005),
        color: Colors.blue,
        child: Row(
        children: [
        Icon(Icons.check,color: Colors.white,size: 14,),
        SizedBox(width: deviceWidth* .0025,),
        Text('Save',style: TextStyle(color: Colors.white),),
        ],
        ),
        ),
        SizedBox(width: deviceWidth* .005,),
        Container(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth* .01,vertical: deviceWidth* .005),
        color: Colors.grey.shade300,
        child: Text('Cancel'),
        ),


        ],
        ),
        )

            ],
          ),
        ),
      ],
    );
  }
}
