import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(XoApp());
}

class XoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text('TicToe'),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: XooApp(),
        )),
      ),
    );
  }
}

class XooApp extends StatefulWidget {
  @override
  _XooAppState createState() => _XooAppState();
}

class _XooAppState extends State<XooApp> {
  List<Icon> XO = [
    null,
    Icon(
      Icons.close,
      size: 60,
      color: Colors.white,
    ),
    Icon(
      Icons.circle,
      size: 60,
      color: Colors.white,
    ),
  ];
  var v1 = 0;
  var v2 = 0;
  var v3 = 0;
  var v4 = 0;
  var v5 = 0;
  var v6 = 0;
  var v7 = 0;
  var v8 = 0;
  var v9 = 0;
  var xTurn = 1;
  var oTurn = 0;

  void onpresed(int x) {
    setState(() {
      switch (x) {
        case 1:
          if (v1 == 0) {
            if (xTurn == 1) {
              v1 = 1;
              xTurn = 0;
              oTurn = 1;
            } else if (oTurn == 1) {
              v1 = 2;
              oTurn = 0;
              xTurn = 1;
            }
          }
          checkEnd();
          break;

        case 2:
          if (v2 == 0) {
            if (xTurn == 1) {
              v2 = 1;
              xTurn = 0;
              oTurn = 1;
            } else if (oTurn == 1) {
              v2 = 2;
              oTurn = 0;
              xTurn = 1;
            }
          }
          checkEnd();
          break;
        case 3:
          if (v3 == 0) {
            if (xTurn == 1) {
              v3 = 1;
              xTurn = 0;
              oTurn = 1;
            } else if (oTurn == 1) {
              v3 = 2;
              oTurn = 0;
              xTurn = 1;
            }
          }
          checkEnd();
          break;
        case 4:
          if (v4 == 0) {
            if (xTurn == 1) {
              v4 = 1;
              xTurn = 0;
              oTurn = 1;
            } else if (oTurn == 1) {
              v4 = 2;
              oTurn = 0;
              xTurn = 1;
            }
          }
          checkEnd();
          break;
        case 5:
          if (v5 == 0) {
            if (xTurn == 1) {
              v5 = 1;
              xTurn = 0;
              oTurn = 1;
            } else if (oTurn == 1) {
              v5 = 2;
              oTurn = 0;
              xTurn = 1;
            }
          }
          checkEnd();
          break;
        case 6:
          if (v6 == 0) {
            if (xTurn == 1) {
              v6 = 1;
              xTurn = 0;
              oTurn = 1;
            } else if (oTurn == 1) {
              v6 = 2;
              oTurn = 0;
              xTurn = 1;
            }
          }
          checkEnd();
          break;
        case 7:
          if (v7 == 0) {
            if (xTurn == 1) {
              v7 = 1;
              xTurn = 0;
              oTurn = 1;
            } else if (oTurn == 1) {
              v7 = 2;
              oTurn = 0;
              xTurn = 1;
            }
          }
          checkEnd();
          break;
        case 8:
          if (v8 == 0) {
            if (xTurn == 1) {
              v8 = 1;
              xTurn = 0;
              oTurn = 1;
            } else if (oTurn == 1) {
              v8 = 2;
              oTurn = 0;
              xTurn = 1;
            }
          }
          checkEnd();
          break;
        case 9:
          if (v9 == 0) {
            if (xTurn == 1) {
              v9 = 1;
              xTurn = 0;
              oTurn = 1;
            } else if (oTurn == 1) {
              v9 = 2;
              oTurn = 0;
              xTurn = 1;
            }
          }
          checkEnd();
          break;
      }
    });
  }

  void checkEnd() {
    if (v1 == 1 && v2 == 1 && v3 == 1) {
      AlertMess("X Player won");
    } else if (v4 == 1 && v5 == 1 && v6 == 1) {
      AlertMess("X Player won");
    } else if (v7 == 1 && v8 == 1 && v9 == 1) {
      AlertMess("X Player won");
    } else if (v1 == 1 && v4 == 1 && v7 == 1) {
      AlertMess("X Player won");
    } else if (v2 == 1 && v5 == 1 && v8 == 1) {
      AlertMess("X Player won");
      resetGame();
    } else if (v3 == 1 && v6 == 1 && v9 == 1) {
      AlertMess("X Player won");
    } else if (v1 == 1 && v5 == 1 && v9 == 1) {
      AlertMess("X Player won");
    } else if (v3 == 1 && v5 == 1 && v7 == 1) {
      AlertMess("X Player won");
    } else if (v1 == 2 && v2 == 2 && v3 == 2) {
      AlertMess("O Player won");
    } else if (v4 == 2 && v5 == 2 && v6 == 2) {
      AlertMess("O Player won");
    } else if (v7 == 2 && v8 == 2 && v9 == 2) {
      AlertMess("O Player won");
    } else if (v1 == 2 && v4 == 2 && v7 == 2) {
      AlertMess("O Player won");
    } else if (v2 == 2 && v5 == 2 && v8 == 2) {
      AlertMess("O Player won");
    } else if (v3 == 2 && v6 == 2 && v9 == 2) {
      AlertMess("O Player won");
    } else if (v1 == 2 && v5 == 2 && v9 == 2) {
      AlertMess("O Player won");
    } else if (v3 == 2 && v5 == 2 && v7 == 2) {
      AlertMess("O Player won");
    } else if (v1 != 0 &&
        v2 != 0 &&
        v3 != 0 &&
        v4 != 0 &&
        v5 != 0 &&
        v6 != 0 &&
        v7 != 0 &&
        v8 != 0 &&
        v9 != 0) {
      Alert(
              context: context,
              type: AlertType.error,
              title: "Game Was Draw TryAgain")
          .show();
      resetGame();
    }
  }

  void resetGame() {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    xTurn = 1;
    oTurn = 0;
  }

  void AlertMess(String Mess) {
    resetGame();
    Alert(context: context, type: AlertType.success, title: Mess, buttons: [
      DialogButton(
        child: Text('PlayAgain'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      DialogButton(
        child: Text('Close'),
        onPressed: () {
          setState(() {
exit(0);
          });
        },
      ),
    ]).show();
  }

  String Turn() {
    if (xTurn == 1) {
      return "X";
    } else
      return "O";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            Turn(),
            style: TextStyle(fontSize: 100.0),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Turn",
            style: TextStyle(fontSize: 50.0),
          ),
        ),
Expanded(
  flex: 3,
  child:   Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              onpresed(1);
            },
            child: Container(
              child: XO[v1],
              margin: EdgeInsets.all(2),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onpresed(2);
            },
            child: Container(
              child: XO[v2],
              margin: EdgeInsets.all(2),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onpresed(3);
            },
            child: Container(
              child: XO[v3],
              margin: EdgeInsets.all(2),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              onpresed(4);
            },
            child: Container(
              child: XO[v4],
              margin: EdgeInsets.all(2),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onpresed(5);
            },
            child: Container(
              child: XO[v5],
              margin: EdgeInsets.all(2),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onpresed(6);
            },
            child: Container(
              child: XO[v6],
              margin: EdgeInsets.all(2),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              onpresed(7);
            },
            child: Container(
              child: XO[v7],
              margin: EdgeInsets.all(2),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onpresed(8);
            },
            child: Container(
              child: XO[v8],
              margin: EdgeInsets.all(2),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onpresed(9);
            },
            child: Container(
              child: XO[v9],
              margin: EdgeInsets.all(2),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top: 60.0),
        child: Text('Created By Michael Raafat Mafdy', style: TextStyle(fontSize: 15.0,),),
      ),
    ],
  ),
),

      ],
    );
  }
}
