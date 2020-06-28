import 'package:flutter/material.dart';
import 'package:flutter_hack/MiddleContent/QuickAccessWorkArea.dart';
import 'package:flutter_hack/MiddleContent/ThisPCWorkArea.dart';

bool quickAccess = false;
bool onedrive = false;
bool thispc = false;
bool network = false;

//bool thispcButton = true;

int select = 0;

class MiddleScreen extends StatefulWidget {
  @override
  _MiddleScreenState createState() => _MiddleScreenState();
}

class _MiddleScreenState extends State<MiddleScreen> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children: [
          Container(
            width: 150,
            margin: EdgeInsets.only(bottom: 5),
            height: MediaQuery.of(context).size.height - 172,
            color: Colors.grey,
            child: Column(
              children: [
                InkWell(
                  onTap: () => setState(() {
                          select = 1;
                        }),
                    child: Container(
                      height: 24,
                    margin: EdgeInsets.only(top: 20),
                    color: select == 1 ? Colors.grey[600] : Colors.grey,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => setState(() {
                            quickAccess = !quickAccess;
                          }),
                          child: Container(
                            height: 12,
                            padding: EdgeInsets.only(left: 8),
                            child: quickAccess == true
                                ? Image.asset('images/down.png')
                                : Image.asset('images/nextAnotherr.png'),
                          ),
                        ),
                        Container(
                          height: 16,
                          margin: EdgeInsets.only(left: 10),
                          //padding: EdgeInsets.all(1),
                          child: Image.asset('images/QuickkAccess.png'),
                        ),
                        Container(
                          height: 20,
                          margin: EdgeInsets.only(left: 4),
                          //padding: EdgeInsets.only(top:1),
                          child: Text(
                            'Quick access',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                quickAccess == true
                    ? Column(children: [
                        quickacc(context, 'images/download.png', 'Downloads'),
                        quickacc(context, 'images/desktoppp.png', 'Desktop'),
                        quickacc(context, 'images/document.png', 'Documents'),
                        quickacc(context, 'images/image.png', 'Pictures'),
                      ])
                    : Container(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => setState(() {
                          onedrive = !onedrive;
                        }),
                        child: Container(
                          height: 12,
                          padding: EdgeInsets.only(left: 8),
                          child: onedrive == true
                              ? Image.asset('images/down.png')
                              : Image.asset('images/nextAnotherr.png'),
                        ),
                      ),
                      Container(
                        height: 16,
                        margin: EdgeInsets.only(left: 10),
                        //padding: EdgeInsets.all(1),
                        child: Image.asset('images/drive.png'),
                      ),
                      Container(
                        height: 20,
                        margin: EdgeInsets.only(left: 4),
                        //padding: EdgeInsets.only(top:1),
                        child: Text(
                          'One Drive',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    select = 0;
                  }),
                  child: Container(
                    height: 24,
                    color: select == 0 ? Colors.grey[600] : Colors.grey,
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => setState(() {
                            thispc = !thispc;
                          }),
                          child: Container(
                            height: 12,
                            padding: EdgeInsets.only(left: 8),
                            child: thispc == true
                                ? Image.asset('images/down.png')
                                : Image.asset('images/nextAnotherr.png'),
                          ),
                        ),
                        Container(
                          height: 16,
                          margin: EdgeInsets.only(left: 10),
                          //padding: EdgeInsets.all(1),
                          child: Image.asset('images/mycomp.png'),
                        ),
                        Container(
                          height: 20,
                          margin: EdgeInsets.only(left: 4, top: 1),
                          //padding: EdgeInsets.only(top:1),
                          child: Text(
                            'This PC',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                thispc == true
                    ? Column(children: [
                        quickacc(context, 'images/download.png', 'Downloads'),
                        quickacc(context, 'images/desktoppp.png', 'Desktop'),
                        quickacc(context, 'images/document.png', 'Documents'),
                        quickacc(context, 'images/image.png', 'Pictures'),
                        quickacc(context, 'images/video.png', 'Videos'),
                        quickacc(context, 'images/music.png', 'Music'),
                        quickacc(context, 'images/cdrive.png', 'Windows (C:)'),
                      ])
                    : Container(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => setState(() {
                          network = !network;
                        }),
                        child: Container(
                          height: 12,
                          padding: EdgeInsets.only(left: 8),
                          child: network == true
                              ? Image.asset('images/down.png')
                              : Image.asset('images/nextAnotherr.png'),
                        ),
                      ),
                      Container(
                        height: 16,
                        margin: EdgeInsets.only(left: 10),
                        //padding: EdgeInsets.all(1),
                        child: Image.asset('images/network.png'),
                      ),
                      Container(
                        height: 20,
                        margin: EdgeInsets.only(left: 4),
                        //padding: EdgeInsets.only(top:1),
                        child: Text(
                          'Network',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //WorkArea
          select == 0 ?
            ThisPcWorkArea() : Container(),
          select == 1 ? QuickAccess() : Container(),
        ],
      ),
    );
  }
}

Widget quickacc(context, image, name) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Container(
          height: 16,
          margin: EdgeInsets.only(left: 50),
          //padding: EdgeInsets.all(1),
          child: Image.asset(image),
        ),
        Container(
          height: 20,
          margin: EdgeInsets.only(left: 4),
          //padding: EdgeInsets.only(top:1),
          child: Text(
            name,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    ),
  );
}
