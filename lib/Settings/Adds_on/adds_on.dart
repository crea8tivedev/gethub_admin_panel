import 'package:flutter/material.dart';

class CustomerDisplay extends StatelessWidget {
  static const routeName = 'CustomerDisplay';
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
                    Text('Customer Display Ads',style: TextStyle(fontSize: 30,color: Colors.orange),),
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
                                Text('Customer Display Ads',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: deviceWidth* .005,horizontal: deviceWidth* .005),
                            color: Colors.blue,
                            child: Row(
                              children: [
                                Icon(Icons.add,color: Colors.white,size: 16,),
                                Text('Add Customer Display Ads',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: deviceWidth* .0175,),
                    Row(
                      children: [
                        Container(
                          color: Colors.blue.shade300,
                          height: deviceWidth* .085,
                          width: 5,
                        ),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(deviceWidth* .01),
                            alignment: Alignment.centerLeft,
                            height: deviceWidth* .085,
                            color: Colors.lightBlue.shade50,
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style:TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: "Display your customers' real-time order details on a separate screen!\nCreate Customer Display ads with customized images or promotions to drive repeat sales. Click "),
                                      TextSpan(text: "here ", style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
                                      TextSpan(text: "to learn more."),
                                    ],
                                  ),
                                ),
                                SizedBox(height: deviceWidth* .0125,),
                                RichText(
                                  text: TextSpan(
                                    style:TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(text: "Please upgrade to the latest "),
                                      TextSpan(text: "StoreHub App (v2.17.0) ", style: new TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: "to support Customer Facing Display.\nDownload "),
                                      TextSpan(text: "'StoreHub Customer Display'", style: new TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: "from the App Store or Play Store on a separate device to use as display screen."),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
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
