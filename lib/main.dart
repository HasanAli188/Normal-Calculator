import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff7C50FB),
          title: Text(
            "Calculator",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Flexible(
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffE9E9E9),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Display",
                          style: TextStyle(
                            color: Color(0xffd7d7d7),
                            // fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Flexible(
                        child: Row(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Flexible(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Flexible(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            MyButton(
                                              btnVal: "AC",
                                            ),
                                            MyButton(
                                              btnVal: "+/-",
                                            ),
                                            MyButton(
                                              btnVal: "%",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            MyButton(
                                              btnVal: "7",
                                            ),

                                            // 8 button in below
                                            MyButton(
                                              btnVal: "8",
                                            ),

                                            MyButton(
                                              btnVal: "9",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            MyButton(
                                              btnVal: "4",
                                            ),
                                            MyButton(
                                              btnVal: "5",
                                            ),
                                            MyButton(
                                              btnVal: "6",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            MyButton(
                                              btnVal: "1",
                                            ),
                                            MyButton(
                                              btnVal: "2",
                                            ),
                                            MyButton(
                                              btnVal: "3",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Row(
                                          children: [
                                            zeroButton(
                                              zroBtnVal: "0",
                                            ),
                                            MyButton(
                                              btnVal: ".",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color(0xff7C50FB),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Flexible(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      MyButton(
                                        btnVal: "/",
                                        btnBgColor: Colors.white,
                                        textColor: Color(0xff7C50FB),
                                      ),
                                      MyButton(
                                        btnVal: "*",
                                        btnBgColor: Colors.white,
                                        textColor: Color(0xff7C50FB),
                                      ),
                                      MyButton(
                                        btnVal: "-",
                                        btnBgColor: Colors.white,
                                        textColor: Color(0xff7C50FB),
                                      ),
                                      MyButton(
                                        btnVal: "+",
                                        btnBgColor: Colors.white,
                                        textColor: Color(0xff7C50FB),
                                      ),
                                      MyButton(
                                        btnVal: "=",
                                        btnBgColor: Colors.white,
                                        textColor: Color(0xff7C50FB),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class zeroButton extends StatelessWidget {
  final String zroBtnVal;

  const zeroButton({
    Key? key,
    required this.zroBtnVal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        margin: EdgeInsets.only(
          left: 8,
          right: 8,
          bottom: 5,
          top: 5,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff7C50FB),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Text(
          zroBtnVal,
          style: TextStyle(
            fontFamily: "Montserrat",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}

// Left side all button without zero
class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.btnVal,
    this.btnBgColor = const Color(0xff7C50FB),
    this.textColor = Colors.white,
  }) : super(key: key);

  final String btnVal;
  final Color btnBgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: btnBgColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Text(
          btnVal,
          style: TextStyle(
            fontFamily: "Montserrat",
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
