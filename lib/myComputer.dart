import 'package:flutter/material.dart';
import 'package:flutter_hack/Rows/ThirdRow.dart';
import 'package:flutter_hack/Rows/forthRow.dart';
import 'package:flutter_hack/MiddleContent/middleContent.dart';

bool showthirdRow = true;
bool normalButton = true;

class MyComp extends StatefulWidget {
  @override
  _MyCompState createState() => _MyCompState();
}

class _MyCompState extends State<MyComp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //1st Row
          Container(
            color: Colors.grey,
            //.fromRGBO(191,189, 189, 1),
            width: MediaQuery.of(context).size.width,
            height: 22,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  margin: EdgeInsets.all(1),
                  child: new Tab(
                    icon: new Image.asset("images/mycomp.png"),
                  ),
                ),
                VerticalDivider(),
                Container(
                  height: 20,
                  width: 20,
                  margin: EdgeInsets.all(1),
                  child: new Tab(
                    icon: new Image.asset("images/property.png"),
                  ),
                ),
                Container(
                  height: 20,
                  //width: 20,
                  margin: EdgeInsets.all(1),
                  child: new Tab(
                    //iconMargin: EdgeInsets.all(10),
                    icon: new Image.asset("images/newFolder.png"),
                  ),
                ),
                VerticalDivider(
                    //indent: 50,
                    ),
                Container(
                  height: 20,
                  //width: 20,
                  margin: EdgeInsets.all(1),
                  child: Text(
                    'This PC',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: 1315,
                ),

                Container(
                  height: 20,
                  width: 20,
                  color: Color.fromRGBO(191, 189, 189, 0.5),
                  child: Center(
                      child: Text(
                    '-',
                    style: TextStyle(fontSize: 16, fontFamily: 'segoeUi'),
                  )),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 20,
                  width: 20,
                  color: Color.fromRGBO(191, 189, 189, 0.5),
                  child: Center(
                      child: Icon(
                    Icons.crop_square,
                    size: 14,
                  )),
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.red,
                    child: Center(
                        child: Text(
                      'X',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontFamily: 'segoeUi'),
                    )),
                  ),
                  onTap: () {
                    setState(() {
                      //close browser
                    });
                  },
                ),
              ],
            ),
          ),

          //2nd Row
          Container(
            color: Colors.grey,
            //.fromRGBO(191,189, 189, 1),
            width: MediaQuery.of(context).size.width,
            height: 25,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 40,
                    width: 60,
                    //margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.only(top: 4),
                          child: Text(
                            'File',
                            style: TextStyle(fontSize: 10),
                            textAlign: TextAlign.center,
                          )),
                    )),
                Container(
                  height: 40,
                  width: 60,
                  //margin: EdgeInsets.all(5),
                  color: showthirdRow == true
                      ? Color.fromRGBO(191, 189, 189, 1)
                      : Colors.grey,
                  child: InkWell(
                      onTap: () => setState(() {
                            showthirdRow = true;
                          }),
                      onHover: (value) => mounted
                          ? setState(() {
                              normalButton = false;
                            })
                          : {},
                      child: Container(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          'Computer',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10),
                        ),
                      )),
                ),
                Container(
                  height: 40,
                  width: 60,
                  //margin: EdgeInsets.all(5),
                  color: showthirdRow == false
                      ? Color.fromRGBO(191, 189, 189, 1)
                      : Colors.grey,
                  child: Container(
                      padding: EdgeInsets.only(top: 4),
                      child: GestureDetector(
                        onTap: () => setState(() {
                          showthirdRow = false;
                        }),
                        child: Text(
                          'View',
                          style: TextStyle(fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ),
              ],
            ),
          ),
          // 3rd Row
          showthirdRow == true ? thirdRow(context) : thirdRowSecond(context),
          //forthRow
          ForthRow(),
          //MiddleScreen
          MiddleScreen(),
        ],
      ),
    );
  }
}
