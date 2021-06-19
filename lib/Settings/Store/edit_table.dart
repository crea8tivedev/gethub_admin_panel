import 'package:flutter/material.dart';

class TableLayout extends StatefulWidget {
  static const routeName = 'TableLayout';

  @override
  _TableLayoutState createState() => _TableLayoutState();
}

class _TableLayoutState extends State<TableLayout> {
Color color = Colors.transparent;
void changeColor(){
  color = Colors.orange;
}
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
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
          color: Colors.white,
          padding: EdgeInsets.all(deviceWidth * .01),
          width: deviceWidth* .8,
          height: deviceHeight,
          child: ListView(
            children: [Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Edit Table Layout',
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
                                'Edit Store',
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
                                'Edit Table Layout',
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
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: deviceWidth* .25,
                        height: deviceWidth* .025  ,
                        decoration: BoxDecoration(
                            border:
                            Border.all(color: Colors.grey.shade300)),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search_outlined),
                            hintText: 'Search Table Name',
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            // contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      Text('? How to set up your Table Layout',style: TextStyle(color: Colors.blue.shade700,),)
                    ],
                  ),
                  SizedBox(height: deviceWidth* .01,),
Container(
  width: deviceWidth,
  height: deviceHeight* .8,
  child:   Row(
    children: [
      Expanded(
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300)
            ),
        ),

      ),
SizedBox(width: deviceWidth* .01,),
      Expanded(
        flex: 4,
        child: Container(
          height: deviceHeight* .8,
            color: Color(0xFFE3F0F2),
          child: CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 6,
                  children: <Widget>[
                    Draggable(
                      onDragStarted: (){
                        setState(() {
                          changeColor();
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Text("001"),
                        color: Color(0xFF9EA2A5),
                      ),
                      feedback: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        width: 133.33,
                        height: 133.33,
                        child: const Text("001"),
                        color: Color(0xFF9EA2A5),
                      ),
                      childWhenDragging: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        width: 133.33,
                        height: 133.33,
                        child: const Text("001"),
                        color: Color(0xFF9EA2A5),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      child:  Text('004'),
                      color: Color(0xFF9EA2A5),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      child: Text('007'),
                      color: Color(0xFF9EA2A5),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      child: Text('Credit '),
                      color: Color(0xFF9EA2A5),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      child: Text('Delivery Eat'),
                      color: Color(0xFF9EA2A5),
                    ),
                    DragTarget(builder: (
                        BuildContext context,
                        List<dynamic> accepted,
                        List<dynamic> rejected,
                    ){
                      return Container(
                        padding: const EdgeInsets.all(8),
                        // child: const Text('Revolution is coming...'),
                        color: color,
                      );
                    },
                      onAccept: (Color color){
                      setState(() {
                        color = Colors.orange;
                      });

                      },


                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ],
  ),
)
                ]),
          ]
          ),
        ),
      ),
    );
  }
}
