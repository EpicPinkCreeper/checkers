import 'package:checkers/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String fromSpot = "";
String p1Win = "Player 1 Wins";
String p2Win = "Player 2 Wins";

int p1Pieces = 8;
int p2Pieces = 8;

bool firstPlayerWin = false;
bool secondPlayerWin = false;

bool firstPlayerTurn = true;
Color playerColor = Color(0xff00aaaf);
bool isSuccessful = false;
//hasPiece
bool hasPiece1 = true; //temp

bool hasPiece11 = true;
bool hasPiece12 = true;
bool hasPiece13 = true;
bool hasPiece14 = true;

bool hasPiece21 = true;
bool hasPiece22 = true;
bool hasPiece23 = true;
bool hasPiece24 = true;

bool hasPiece31 = false;
bool hasPiece32 = false;
bool hasPiece33 = false;
bool hasPiece34 = false;

bool hasPiece41 = false;
bool hasPiece42 = false;
bool hasPiece43 = false;
bool hasPiece44 = false;

bool hasPiece51 = false;
bool hasPiece52 = false;
bool hasPiece53 = false;
bool hasPiece54 = false;

bool hasPiece61 = false;
bool hasPiece62 = false;
bool hasPiece63 = false;
bool hasPiece64 = false;

bool hasPiece71 = true;
bool hasPiece72 = true;
bool hasPiece73 = true;
bool hasPiece74 = true;

bool hasPiece81 = true;
bool hasPiece82 = true;
bool hasPiece83 = true;
bool hasPiece84 = true;

//isRed
bool isRed11 = false;
bool isRed12 = false;
bool isRed13 = false;
bool isRed14 = false;

bool isRed21 = false;
bool isRed22 = false;
bool isRed23 = false;
bool isRed24 = false;

bool isRed31 = false;
bool isRed32 = false;
bool isRed33 = false;
bool isRed34 = false;

bool isRed41 = false;
bool isRed42 = false;
bool isRed43 = false;
bool isRed44 = false;

bool isRed51 = false;
bool isRed52 = false;
bool isRed53 = false;
bool isRed54 = false;

bool isRed61 = false;
bool isRed62 = false;
bool isRed63 = false;
bool isRed64 = false;

bool isRed71 = true;
bool isRed72 = true;
bool isRed73 = true;
bool isRed74 = true;

bool isRed81 = true;
bool isRed82 = true;
bool isRed83 = true;
bool isRed84 = true;

//isKing
bool isKing11 = false;
bool isKing12 = false;
bool isKing13 = false;
bool isKing14 = false;

bool isKing21 = false;
bool isKing22 = false;
bool isKing23 = false;
bool isKing24 = false;

bool isKing31 = false;
bool isKing32 = false;
bool isKing33 = false;
bool isKing34 = false;

bool isKing41 = false;
bool isKing42 = false;
bool isKing43 = false;
bool isKing44 = false;

bool isKing51 = false;
bool isKing52 = false;
bool isKing53 = false;
bool isKing54 = false;

bool isKing61 = false;
bool isKing62 = false;
bool isKing63 = false;
bool isKing64 = false;

bool isKing71 = false;
bool isKing72 = false;
bool isKing73 = false;
bool isKing74 = false;

bool isKing81 = false;
bool isKing82 = false;
bool isKing83 = false;
bool isKing84 = false;

//enum playerOnePieces { a, b, c, d, e, f, g, h, i, j, k, l }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkers',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          // top bar
          backgroundColor: Color(0xff00aaaf),
          foregroundColor: Color(0xffcb00b9),
        ),
        dividerColor: Color(0xff00c5cb),
        elevatedButtonTheme: ElevatedButtonThemeData(
          //button 2
          style: ElevatedButton.styleFrom(
            primary: Color(0xff00aaaf),
            onPrimary: Colors.white,
          ),
        ),
        errorColor: Color(0xffff00e8),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          //button 1
          backgroundColor: Color(0xff00aaaf),
          foregroundColor: Color(0xffcb00b9),
        ),
        hintColor: Color(0xff00c5cb),
        inputDecorationTheme: InputDecorationTheme(
          iconColor: Colors.red, //?
          focusColor: Colors.red, //?
          labelStyle: TextStyle(
            color: Color(0xff00c5cb),
          ),
          floatingLabelStyle: TextStyle(
            color: Color(0xff00c5cb),
          ),
          /*
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
            ),
*/
        ),
        listTileTheme: ListTileThemeData(
          //list item
          tileColor: Colors.black,
          textColor: Color(0xff00c5cb),
          iconColor: Color(0xff00c5cb),
        ),
        primaryColor: Color(0xff00c5cb),
        scaffoldBackgroundColor: Color(0xff4d6aab),
        textButtonTheme: TextButtonThemeData(
          //button 3
          style: ElevatedButton.styleFrom(
            primary: Color(0xffcb00b9),
            onPrimary: Colors.white,
          ),
        ),
        textTheme: TextTheme(subtitle1: TextStyle()).apply(
          //no idea what this one does
          bodyColor: Color(0xffcb00b9),
          displayColor: Color(0xffcb00b9),
        ),
        toggleableActiveColor: Color(0xffff00e8),
        //checkbox checked
        unselectedWidgetColor: Color(0xffcb00b9),
        //checkbox not checked
        canvasColor: Colors.black,
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Checkers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void changePlayerTurn() {
    firstPlayerTurn = !firstPlayerTurn;
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: (p1Pieces == 0)
                    ? Text(
                        '$p1Win',
                        style: TextStyle(color: Colors.black, fontSize: 50),
                      )
                    : (p2Pieces == 0)
                        ? Text(
                            '$p2Win',
                            style: TextStyle(color: Colors.red, fontSize: 50),
                          )
                        : Text(
                            '',
                          )),
            Row(
              //ROW 1
              children: [
                Container(
                    width: 20.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece11 && isRed11 && !isKing11
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece11 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "11";
                                  },
                                )),
                              ),
                            )
                          : hasPiece11 && !isRed11 && !isKing11
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece11 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "11";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece11 && isRed11 && isKing11
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece11 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "11";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece11 && !isRed11 && isKing11
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece11 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "11";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if (fromSpot == "21" && !hasPiece11 && data != "black") {
                      return true;
                    } else if (fromSpot == "32" &&
                        !hasPiece11 &&
                        hasPiece21 &&
                        data != "black" &&
                        !(isRed32 == isRed21)) {
                      hasPiece21 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece11 = true;
                      if (data == "black") {
                        isRed11 = false;
                        isKing11 = false;
                      } else if (data == "red") {
                        isRed11 = true;
                        isKing11 = true;
                      }

                      if (data == "blackKing") {
                        isRed11 = false;
                        isKing11 = true;
                      } else if (data == "redKing") {
                        isRed11 = true;
                        isKing11 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece12 && isRed12 && !isKing12
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece12 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "12";
                                  },
                                )),
                              ),
                            )
                          : hasPiece12 && !isRed12 && !isKing12
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece12 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "12";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece12 && isRed12 && isKing12
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece12 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "12";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece12 && !isRed12 && isKing12
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece12 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "12";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "21" || fromSpot == "22") &&
                        !hasPiece12 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "31" &&
                        !hasPiece12 &&
                        hasPiece21 &&
                        data != "black" &&
                        !(isRed21 == isRed31)) {
                      hasPiece21 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "33" &&
                        !hasPiece12 &&
                        hasPiece22 &&
                        data != "black" &&
                        !(isRed22 == isRed33)) {
                      hasPiece22 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece12 = true;
                      if (data == "black") {
                        isRed12 = false;
                        isKing12 = false;
                      } else if (data == "red") {
                        isRed12 = true;
                        isKing12 = true;
                      }

                      if (data == "blackKing") {
                        isRed12 = false;
                        isKing12 = true;
                      } else if (data == "redKing") {
                        isRed12 = true;
                        isKing12 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece13 && isRed13 && !isKing13
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece13 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "13";
                                  },
                                )),
                              ),
                            )
                          : hasPiece13 && !isRed13 && !isKing13
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece13 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "13";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece13 && isRed13 && isKing13
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece13 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "13";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece13 && !isRed13 && isKing13
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece13 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "13";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "23" || fromSpot == "22") &&
                        !hasPiece13 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "34" &&
                        !hasPiece13 &&
                        hasPiece23 &&
                        data != "black" &&
                        !(isRed23 == isRed34)) {
                      hasPiece23 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "32" &&
                        !hasPiece13 &&
                        hasPiece22 &&
                        data != "black" &&
                        !(isRed22 == isRed32)) {
                      hasPiece22 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece13 = true;
                      if (data == "black") {
                        isRed13 = false;
                        isKing13 = false;
                      } else if (data == "red") {
                        isRed13 = true;
                        isKing13 = true;
                      }

                      if (data == "blackKing") {
                        isRed13 = false;
                        isKing13 = true;
                      } else if (data == "redKing") {
                        isRed13 = true;
                        isKing13 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece14 && isRed14 && !isKing14
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece14 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "14";
                                  },
                                )),
                              ),
                            )
                          : hasPiece14 && !isRed14 && !isKing14
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece14 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "14";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece14 && isRed14 && isKing14
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece14 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "14";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece14 && !isRed14 && isKing14
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece14 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "14";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "23" || fromSpot == "24") &&
                        !hasPiece14 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "33" &&
                        !hasPiece13 &&
                        hasPiece23 &&
                        data != "black" &&
                        !(isRed23 == isRed33)) {
                      hasPiece23 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece14 = true;
                      if (data == "black") {
                        isRed14 = false;
                        isKing14 = false;
                      } else if (data == "red") {
                        isRed14 = true;
                        isKing14 = true;
                      }

                      if (data == "blackKing") {
                        isRed14 = false;
                        isKing14 = true;
                      } else if (data == "redKing") {
                        isRed14 = true;
                        isKing14 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
              ],
            ),
            Row(
              //ROW 2
              children: [
                Container(
                    width: 20.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    )),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece21 && isRed21 && !isKing21
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece21 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "21";
                                  },
                                )),
                              ),
                            )
                          : hasPiece21 && !isRed21 && !isKing21
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece21 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "21";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece21 && isRed21 && isKing21
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece21 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "21";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece21 && !isRed21 && isKing21
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece21 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "21";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "11" || fromSpot == "12") &&
                        !hasPiece21 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "31" || fromSpot == "32") &&
                        !hasPiece21 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "42" &&
                        !hasPiece21 &&
                        hasPiece32 &&
                        data != "black" &&
                        !(isRed42 == isRed32)) {
                      hasPiece32 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece21 = true;
                      if (data == "black") {
                        isRed21 = false;
                        isKing21 = false;
                      } else if (data == "red") {
                        isRed21 = true;
                        isKing21 = false;
                      }

                      if (data == "blackKing") {
                        isRed21 = false;
                        isKing21 = true;
                      } else if (data == "redKing") {
                        isRed21 = true;
                        isKing21 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece22 && isRed22 && !isKing22
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece22 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "22";
                                  },
                                )),
                              ),
                            )
                          : hasPiece22 && !isRed22 && !isKing22
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece22 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "22";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece22 && isRed22 && isKing22
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece22 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "22";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece22 && !isRed22 && isKing22
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece22 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "22";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "13" || fromSpot == "12") &&
                        !hasPiece22 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "33" || fromSpot == "32") &&
                        !hasPiece22 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "41" &&
                        !hasPiece22 &&
                        hasPiece32 &&
                        data != "black" &&
                        !(isRed41 == isRed32)) {
                      hasPiece31 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "43" &&
                        !hasPiece22 &&
                        hasPiece33 &&
                        data != "black" &&
                        !(isRed43 == isRed33)) {
                      hasPiece33 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece22 = true;
                      if (data == "black") {
                        isRed22 = false;
                        isKing22 = false;
                      } else if (data == "red") {
                        isRed22 = true;
                        isKing22 = false;
                      }

                      if (data == "blackKing") {
                        isRed22 = false;
                        isKing22 = true;
                      } else if (data == "redKing") {
                        isRed22 = true;
                        isKing22 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece23 && isRed23 && !isKing23
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece23 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "23";
                                  },
                                )),
                              ),
                            )
                          : hasPiece23 && !isRed23 && !isKing23
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece23 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "23";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece23 && isRed23 && isKing23
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece23 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "23";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece23 && !isRed23 && isKing23
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece23 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "23";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "13" || fromSpot == "14") &&
                        !hasPiece23 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "33" || fromSpot == "34") &&
                        !hasPiece23 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "42" &&
                        !hasPiece23 &&
                        hasPiece33 &&
                        data != "black" &&
                        !(isRed42 == isRed33)) {
                      hasPiece33 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "44" &&
                        !hasPiece23 &&
                        hasPiece34 &&
                        data != "black" &&
                        !(isRed44 == isRed34)) {
                      hasPiece34 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece23 = true;
                      if (data == "black") {
                        isRed23 = false;
                        isKing23 = false;
                      } else if (data == "red") {
                        isRed23 = true;
                        isKing23 = false;
                      }

                      if (data == "blackKing") {
                        isRed23 = false;
                        isKing23 = true;
                      } else if (data == "redKing") {
                        isRed23 = true;
                        isKing23 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece24 && isRed24 && !isKing24
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece24 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "24";
                                  },
                                )),
                              ),
                            )
                          : hasPiece24 && !isRed24 && !isKing24
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece24 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "24";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece24 && isRed24 && isKing24
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece24 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "24";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece24 && !isRed24 && isKing24
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece24 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "24";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "14") && !hasPiece24 && data != "red") {
                      return true;
                    } else if ((fromSpot == "34") &&
                        !hasPiece24 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "43" &&
                        !hasPiece24 &&
                        hasPiece34 &&
                        data != "black" &&
                        !(isRed43 == isRed34)) {
                      hasPiece34 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece24 = true;
                      if (data == "black") {
                        isRed24 = false;
                        isKing24 = false;
                      } else if (data == "red") {
                        isRed24 = true;
                        isKing24 = false;
                      }

                      if (data == "blackKing") {
                        isRed24 = false;
                        isKing24 = true;
                      } else if (data == "redKing") {
                        isRed24 = true;
                        isKing24 = true;
                      }
                    });
                  },
                ),
              ],
            ),
            Row(
              //ROW 3
              children: [
                Container(
                    width: 20.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece31 && isRed31 && !isKing31
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece31 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "31";
                                  },
                                )),
                              ),
                            )
                          : hasPiece31 && !isRed31 && !isKing31
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece31 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "31";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece31 && isRed31 && isKing31
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece31 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "31";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece31 && !isRed31 && isKing31
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece31 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "31";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "21") && !hasPiece31 && data != "red") {
                      return true;
                    } else if ((fromSpot == "41") &&
                        !hasPiece31 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "12" &&
                        !hasPiece31 &&
                        hasPiece21 &&
                        data != "red" &&
                        !(isRed12 == isRed21)) {
                      hasPiece21 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "52" &&
                        !hasPiece31 &&
                        hasPiece41 &&
                        data != "black" &&
                        !(isRed52 == isRed41)) {
                      hasPiece41 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece31 = true;
                      if (data == "black") {
                        isRed31 = false;
                        isKing31 = false;
                      } else if (data == "red") {
                        isRed31 = true;
                        isKing31 = false;
                      }

                      if (data == "blackKing") {
                        isRed31 = false;
                        isKing31 = true;
                      } else if (data == "redKing") {
                        isRed31 = true;
                        isKing31 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece32 && isRed32 && !isKing32
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece32 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "32";
                                  },
                                )),
                              ),
                            )
                          : hasPiece32 && !isRed32 && !isKing32
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece32 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "32";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece32 && isRed32 && isKing32
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece32 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "32";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece32 && !isRed32 && isKing32
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece32 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "32";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "21" || fromSpot == "22") &&
                        !hasPiece32 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "41" || fromSpot == "42") &&
                        !hasPiece32 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "11" &&
                        hasPiece21 &&
                        !hasPiece32 &&
                        data != "red" &&
                        !(isRed11 == isRed21)) {
                      hasPiece21 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "13" &&
                        hasPiece22 &&
                        !hasPiece32 &&
                        data != "red" &&
                        !(isRed13 == isRed22)) {
                      hasPiece32 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "51" &&
                        hasPiece41 &&
                        !hasPiece32 &&
                        data != "black" &&
                        !(isRed51 == isRed41)) {
                      hasPiece41 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "53" &&
                        hasPiece42 &&
                        !hasPiece32 &&
                        data != "black" &&
                        !(isRed53 == isRed42)) {
                      hasPiece42 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece32 = true;
                      if (data == "black") {
                        isRed32 = false;
                        isKing32 = false;
                      } else if (data == "red") {
                        isRed32 = true;
                        isKing32 = false;
                      }

                      if (data == "blackKing") {
                        isRed32 = false;
                        isKing32 = true;
                      } else if (data == "redKing") {
                        isRed32 = true;
                        isKing32 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece33 && isRed33 && !isKing33
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece33 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "33";
                                  },
                                )),
                              ),
                            )
                          : hasPiece33 && !isRed33 && !isKing33
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece33 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "33";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece33 && isRed33 && isKing33
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece33 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "33";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece33 && !isRed33 && isKing33
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece33 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "33";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "23" || fromSpot == "22") &&
                        !hasPiece33 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "43" || fromSpot == "42") &&
                        !hasPiece33 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "12" &&
                        !hasPiece33 &&
                        hasPiece22 &&
                        data != "red" &&
                        !(isRed12 == isRed22)) {
                      hasPiece22 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "14" &&
                        !hasPiece33 &&
                        hasPiece23 &&
                        data != "red" &&
                        !(isRed23 == isRed14)) {
                      hasPiece23 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "52" &&
                        !hasPiece33 &&
                        hasPiece42 &&
                        data != "black" &&
                        !(isRed52 == isRed42)) {
                      hasPiece42 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "54" &&
                        !hasPiece33 &&
                        hasPiece43 &&
                        data != "black" &&
                        !(isRed54 == isRed43)) {
                      hasPiece43 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece33 = true;
                      if (data == "black") {
                        isRed33 = false;
                        isKing33 = false;
                      } else if (data == "red") {
                        isRed33 = true;
                        isKing33 = false;
                      }

                      if (data == "blackKing") {
                        isRed33 = false;
                        isKing33 = true;
                      } else if (data == "redKing") {
                        isRed33 = true;
                        isKing33 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece34 && isRed34 && !isKing34
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece34 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "34";
                                  },
                                )),
                              ),
                            )
                          : hasPiece34 && !isRed34 && !isKing34
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece34 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "34";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece34 && isRed34 && isKing34
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece34 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "34";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece34 && !isRed34 && isKing34
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece34 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "34";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "23" || fromSpot == "24") &&
                        !hasPiece34 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "43" || fromSpot == "44") &&
                        !hasPiece34 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "13" &&
                        !hasPiece34 &&
                        hasPiece23 &&
                        data != "red" &&
                        !(isRed13 == isRed23)) {
                      hasPiece23 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "53" &&
                        !hasPiece34 &&
                        hasPiece43 &&
                        data != "black" &&
                        !(isRed53 == isRed43)) {
                      hasPiece43 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece34 = true;
                      if (data == "black") {
                        isRed34 = false;
                        isKing34 = false;
                      } else if (data == "red") {
                        isRed34 = true;
                        isKing34 = false;
                      }

                      if (data == "blackKing") {
                        isRed34 = false;
                        isKing34 = true;
                      } else if (data == "redKing") {
                        isRed34 = true;
                        isKing34 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
              ],
            ),
            Row(
              //ROW 4
              children: [
                Container(
                    width: 20.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    )),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece41 && isRed41 && !isKing41
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece41 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "41";
                                  },
                                )),
                              ),
                            )
                          : hasPiece41 && !isRed41 && !isKing41
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece41 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "41";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece41 && isRed41 && isKing41
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece41 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "41";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece41 && !isRed41 && isKing41
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece41 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "41";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "31" || fromSpot == "32") &&
                        !hasPiece41 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "51" || fromSpot == "52") &&
                        !hasPiece41 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "22" &&
                        !hasPiece41 &&
                        hasPiece32 &&
                        data != "red" &&
                        !(isRed32 == isRed22)) {
                      hasPiece32 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "62" &&
                        !hasPiece41 &&
                        hasPiece52 &&
                        data != "black" &&
                        !(isRed62 == isRed52)) {
                      hasPiece52 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece41 = true;
                      if (data == "black") {
                        isRed41 = false;
                        isKing41 = false;
                      } else if (data == "red") {
                        isRed41 = true;
                        isKing41 = false;
                      }

                      if (data == "blackKing") {
                        isRed41 = false;
                        isKing41 = true;
                      } else if (data == "redKing") {
                        isRed41 = true;
                        isKing41 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece42 && isRed42 && !isKing42
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece42 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "42";
                                  },
                                )),
                              ),
                            )
                          : hasPiece42 && !isRed42 && !isKing42
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece42 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "42";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece42 && isRed42 && isKing42
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece42 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "42";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece42 && !isRed42 && isKing42
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece42 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "42";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "32" || fromSpot == "33") &&
                        !hasPiece42 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "52" || fromSpot == "53") &&
                        !hasPiece42 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "21" &&
                        !hasPiece42 &&
                        hasPiece32 &&
                        data != "red" &&
                        !(isRed21 == isRed32)) {
                      hasPiece32 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "23" &&
                        !hasPiece42 &&
                        hasPiece33 &&
                        data != "red" &&
                        !(isRed23 == isRed33)) {
                      hasPiece33 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "61" &&
                        !hasPiece42 &&
                        hasPiece52 &&
                        data != "black" &&
                        !(isRed52 == isRed61)) {
                      hasPiece52 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "63" &&
                        !hasPiece42 &&
                        hasPiece53 &&
                        data != "black" &&
                        !(isRed53 == isRed63)) {
                      hasPiece53 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece42 = true;
                      if (data == "black") {
                        isRed42 = false;
                        isKing42 = false;
                      } else if (data == "red") {
                        isRed42 = true;
                        isKing42 = false;
                      }

                      if (data == "blackKing") {
                        isRed42 = false;
                        isKing42 = true;
                      } else if (data == "redKing") {
                        isRed42 = true;
                        isKing42 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece43 && isRed43 && !isKing43
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece43 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "43";
                                  },
                                )),
                              ),
                            )
                          : hasPiece43 && !isRed43 && !isKing43
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece43 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "43";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece43 && isRed43 && isKing43
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece43 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "43";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece43 && !isRed43 && isKing43
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece43 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "43";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "33" || fromSpot == "34") &&
                        !hasPiece43 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "53" || fromSpot == "54") &&
                        !hasPiece43 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "22" &&
                        !hasPiece43 &&
                        hasPiece33 &&
                        data != "red" &&
                        !(isRed33 == isRed22)) {
                      hasPiece33 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "24" &&
                        !hasPiece43 &&
                        hasPiece34 &&
                        data != "red" &&
                        !(isRed24 == isRed34)) {
                      hasPiece34 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "62" &&
                        !hasPiece43 &&
                        hasPiece53 &&
                        data != "black" &&
                        !(isRed53 == isRed62)) {
                      hasPiece53 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "64" &&
                        !hasPiece43 &&
                        hasPiece54 &&
                        data != "black" &&
                        !(isRed64 == isRed54)) {
                      hasPiece54 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece43 = true;
                      if (data == "black") {
                        isRed43 = false;
                        isKing43 = false;
                      } else if (data == "red") {
                        isRed43 = true;
                        isKing43 = false;
                      }

                      if (data == "blackKing") {
                        isRed43 = false;
                        isKing43 = true;
                      } else if (data == "redKing") {
                        isRed43 = true;
                        isKing43 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece44 && isRed44 && !isKing44
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece44 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "44";
                                  },
                                )),
                              ),
                            )
                          : hasPiece44 && !isRed44 && !isKing44
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece44 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "44";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece44 && isRed44 && isKing44
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece44 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "44";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece44 && !isRed44 && isKing44
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece44 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "44";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "34") && !hasPiece44 && data != "red") {
                      return true;
                    } else if ((fromSpot == "54") &&
                        !hasPiece44 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "23" &&
                        !hasPiece44 &&
                        hasPiece34 &&
                        data != "red" &&
                        !(isRed34 == isRed23)) {
                      hasPiece34 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "63" &&
                        !hasPiece44 &&
                        hasPiece54 &&
                        data != "black" &&
                        !(isRed54 == isRed63)) {
                      hasPiece54 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece44 = true;
                      if (data == "black") {
                        isRed44 = false;
                        isKing44 = false;
                      } else if (data == "red") {
                        isRed44 = true;
                        isKing44 = false;
                      }

                      if (data == "blackKing") {
                        isRed44 = false;
                        isKing44 = true;
                      } else if (data == "redKing") {
                        isRed44 = true;
                        isKing44 = true;
                      }
                    });
                  },
                ),
              ],
            ),
            Row(
              //ROW 5
              children: [
                Container(
                    width: 20.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece51 && isRed51 && !isKing51
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece51 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "51";
                                  },
                                )),
                              ),
                            )
                          : hasPiece51 && !isRed51 && !isKing51
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece51 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "51";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece51 && isRed51 && isKing51
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece51 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "51";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece51 && !isRed51 && isKing51
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece51 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "51";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "41") && !hasPiece51 && data != "red") {
                      return true;
                    } else if ((fromSpot == "61") &&
                        !hasPiece51 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "32" &&
                        !hasPiece51 &&
                        hasPiece41 &&
                        data != "red" &&
                        !(isRed32 == isRed41)) {
                      hasPiece41 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "72" &&
                        !hasPiece51 &&
                        hasPiece61 &&
                        data != "black" &&
                        !(isRed61 == isRed72)) {
                      hasPiece61 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece51 = true;
                      if (data == "black") {
                        isRed51 = false;
                        isKing51 = false;
                      } else if (data == "red") {
                        isRed51 = true;
                        isKing51 = false;
                      }

                      if (data == "blackKing") {
                        isRed51 = false;
                        isKing51 = true;
                      } else if (data == "redKing") {
                        isRed51 = true;
                        isKing51 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece52 && isRed52 && !isKing52
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece52 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "52";
                                  },
                                )),
                              ),
                            )
                          : hasPiece52 && !isRed52 && !isKing52
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece52 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "52";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece52 && isRed52 && isKing52
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece52 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "52";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece52 && !isRed52 && isKing52
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece52 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "52";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "41" || fromSpot == "42") &&
                        !hasPiece52 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "61" || fromSpot == "62") &&
                        !hasPiece52 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "31" &&
                        !hasPiece52 &&
                        hasPiece41 &&
                        data != "red" &&
                        !(isRed41 == isRed31)) {
                      hasPiece41 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "33" &&
                        !hasPiece52 &&
                        hasPiece42 &&
                        data != "red" &&
                        !(isRed42 == isRed33)) {
                      hasPiece42 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "71" &&
                        !hasPiece52 &&
                        hasPiece61 &&
                        data != "black" &&
                        !(isRed61 == isRed71)) {
                      hasPiece61 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "73" &&
                        !hasPiece52 &&
                        hasPiece62 &&
                        data != "black" &&
                        !(isRed62 == isRed73)) {
                      hasPiece62 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece52 = true;
                      if (data == "black") {
                        isRed52 = false;
                        isKing52 = false;
                      } else if (data == "red") {
                        isRed52 = true;
                        isKing52 = false;
                      }

                      if (data == "blackKing") {
                        isRed52 = false;
                        isKing52 = true;
                      } else if (data == "redKing") {
                        isRed52 = true;
                        isKing52 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece53 && isRed53 && !isKing53
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece53 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "53";
                                  },
                                )),
                              ),
                            )
                          : hasPiece53 && isRed53 && isKing53
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "redKing",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/crown.png'),
                                            ),
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/crown.png'),
                                            ),
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece53 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "53";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece53 && !isRed53 && isKing53
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "blackKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xff124d4e),
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xff124d4e),
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece53 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "53";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece53 && !isRed53 && !isKing53
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "black",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece53 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "53";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "43" || fromSpot == "42") &&
                        !hasPiece53 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "63" || fromSpot == "62") &&
                        !hasPiece53 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "34" &&
                        !hasPiece53 &&
                        hasPiece43 &&
                        data != "red" &&
                        !(isRed43 == isRed31)) {
                      hasPiece43 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "32" &&
                        !hasPiece53 &&
                        hasPiece42 &&
                        data != "red" &&
                        !(isRed42 == isRed32)) {
                      hasPiece42 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "74" &&
                        !hasPiece53 &&
                        hasPiece63 &&
                        data != "black" &&
                        !(isRed63 == isRed74)) {
                      hasPiece63 = false;
                      return true;
                    } else if (fromSpot == "72" &&
                        !hasPiece53 &&
                        hasPiece62 &&
                        data != "black" &&
                        !(isRed62 == isRed72)) {
                      hasPiece62 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece53 = true;
                      if (data == "black") {
                        isRed53 = false;
                        isKing53 = false;
                      } else if (data == "red") {
                        isRed53 = true;
                        isKing53 = false;
                      }

                      if (data == "blackKing") {
                        isRed53 = false;
                        isKing53 = true;
                      } else if (data == "redKing") {
                        isRed53 = true;
                        isKing53 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece54 && isRed54 && !isKing54
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece54 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "54";
                                  },
                                )),
                              ),
                            )
                          : hasPiece54 && !isRed54 && !isKing54
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece54 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "54";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece54 && isRed54 && isKing54
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece54 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "54";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece54 && !isRed54 && isKing54
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece54 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "54";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "43" || fromSpot == "44") &&
                        !hasPiece54 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "63" || fromSpot == "64") &&
                        !hasPiece54 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "33" &&
                        !hasPiece54 &&
                        hasPiece43 &&
                        data != "red" &&
                        !(isRed43 == isRed33)) {
                      hasPiece43 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "73" &&
                        !hasPiece54 &&
                        hasPiece63 &&
                        data != "red" &&
                        !(isRed63 == isRed73)) {
                      hasPiece63 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece54 = true;
                      if (data == "black") {
                        isRed54 = false;
                        isKing54 = false;
                      } else if (data == "red") {
                        isRed54 = true;
                        isKing54 = false;
                      }

                      if (data == "blackKing") {
                        isRed54 = false;
                        isKing54 = true;
                      } else if (data == "redKing") {
                        isRed54 = true;
                        isKing54 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
              ],
            ),
            Row(
              //ROW 6
              children: [
                Container(
                    width: 20.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    )),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece61 && isRed61 && !isKing61
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece61 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "61";
                                  },
                                )),
                              ),
                            )
                          : hasPiece61 && !isRed61 && !isKing61
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece61 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "61";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece61 && isRed61 && isKing61
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece61 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "61";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece61 && !isRed61 && isKing61
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece61 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "61";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "51" || fromSpot == "52") &&
                        !hasPiece61 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "71" || fromSpot == "72") &&
                        !hasPiece61 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "42" &&
                        !hasPiece61 &&
                        hasPiece52 &&
                        data != "red" &&
                        !(isRed52 == isRed42)) {
                      hasPiece52 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "82" &&
                        !hasPiece52 &&
                        hasPiece72 &&
                        data != "black" &&
                        !(isRed72 == isRed82)) {
                      hasPiece72 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece61 = true;
                      if (data == "black") {
                        isRed61 = false;
                        isKing61 = false;
                      } else if (data == "red") {
                        isRed61 = true;
                        isKing61 = false;
                      }

                      if (data == "blackKing") {
                        isRed61 = false;
                        isKing61 = true;
                      } else if (data == "redKing") {
                        isRed61 = true;
                        isKing61 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece62 && isRed62 && !isKing62
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece62 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "62";
                                  },
                                )),
                              ),
                            )
                          : hasPiece62 && !isRed62 && !isKing62
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece62 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "62";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece62 && isRed62 && isKing62
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece62 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "62";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece62 && !isRed62 && isKing62
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece62 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "62";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "52" || fromSpot == "53") &&
                        !hasPiece62 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "72" || fromSpot == "73") &&
                        !hasPiece62 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "41" &&
                        !hasPiece62 &&
                        hasPiece52 &&
                        data != "red" &&
                        !(isRed52 == isRed41)) {
                      hasPiece52 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "43" &&
                        !hasPiece62 &&
                        hasPiece53 &&
                        data != "red" &&
                        !(isRed53 == isRed43)) {
                      hasPiece53 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "81" &&
                        !hasPiece62 &&
                        hasPiece72 &&
                        data != "black" &&
                        !(isRed72 == isRed81)) {
                      hasPiece72 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "83" &&
                        !hasPiece62 &&
                        hasPiece73 &&
                        data != "black" &&
                        !(isRed73 == isRed83)) {
                      hasPiece73 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece62 = true;
                      if (data == "black") {
                        isRed62 = false;
                        isKing62 = false;
                      } else if (data == "red") {
                        isRed62 = true;
                        isKing62 = false;
                      }

                      if (data == "blackKing") {
                        isRed62 = false;
                        isKing62 = true;
                      } else if (data == "redKing") {
                        isRed62 = true;
                        isKing62 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece63 && isRed63 && !isKing63
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece63 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "63";
                                  },
                                )),
                              ),
                            )
                          : hasPiece63 && !isRed63 && !isKing63
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece63 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "63";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece63 && isRed63 && isKing63
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece63 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "63";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece63 && !isRed63 && isKing63
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece63 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "63";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "54" || fromSpot == "53") &&
                        !hasPiece63 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "74" || fromSpot == "73") &&
                        !hasPiece63 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "44" &&
                        !hasPiece63 &&
                        hasPiece54 &&
                        data != "red" &&
                        !(isRed54 == isRed44)) {
                      hasPiece54 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "42" &&
                        !hasPiece63 &&
                        hasPiece53 &&
                        data != "red" &&
                        !(isRed53 == isRed42)) {
                      hasPiece53 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "84" &&
                        !hasPiece63 &&
                        hasPiece74 &&
                        data != "black" &&
                        !(isRed74 == isRed84)) {
                      hasPiece74 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "82" &&
                        !hasPiece63 &&
                        hasPiece73 &&
                        data != "black" &&
                        !(isRed73 == isRed82)) {
                      hasPiece73 = false;
                      return true;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece63 = true;
                      if (data == "black") {
                        isRed63 = false;
                        isKing63 = false;
                      } else if (data == "red") {
                        isRed63 = true;
                        isKing63 = false;
                      }

                      if (data == "blackKing") {
                        isRed63 = false;
                        isKing63 = true;
                      } else if (data == "redKing") {
                        isRed63 = true;
                        isKing63 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece64 && isRed64 && !isKing64
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece64 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "64";
                                  },
                                )),
                              ),
                            )
                          : hasPiece64 && !isRed64 && !isKing64
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece64 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "64";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece64 && isRed64 && isKing64
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece64 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "64";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece64 && !isRed64 && isKing64
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece64 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "64";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "54") && !hasPiece64 && data != "red") {
                      return true;
                    } else if ((fromSpot == "74") &&
                        !hasPiece64 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "43" &&
                        !hasPiece64 &&
                        hasPiece54 &&
                        data != "red" &&
                        !(isRed54 == isRed43)) {
                      hasPiece54 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "83" &&
                        !hasPiece63 &&
                        hasPiece74 &&
                        data != "black" &&
                        !(isRed74 == isRed83)) {
                      hasPiece74 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece64 = true;
                      if (data == "black") {
                        isRed64 = false;
                        isKing64 = false;
                      } else if (data == "red") {
                        isRed64 = true;
                        isKing64 = false;
                      }

                      if (data == "blackKing") {
                        isRed64 = false;
                        isKing64 = true;
                      } else if (data == "redKing") {
                        isRed64 = true;
                        isKing64 = true;
                      }
                    });
                  },
                ),
              ],
            ),
            Row(
              //ROW 7
              children: [
                Container(
                    width: 20.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece71 && isRed71 && !isKing71
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece71 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "71";
                                  },
                                )),
                              ),
                            )
                          : hasPiece71 && !isRed71 && !isKing71
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece71 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "71";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece71 && isRed71 && isKing71
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece71 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "71";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece71 && !isRed71 && isKing71
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece71 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "71";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "61") && !hasPiece71 && data != "red") {
                      return true;
                    } else if ((fromSpot == "81") &&
                        !hasPiece71 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "52" &&
                        !hasPiece71 &&
                        hasPiece61 &&
                        data != "red" &&
                        !(isRed61 == isRed52)) {
                      hasPiece61 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece71 = true;
                      if (data == "black") {
                        isRed71 = false;
                        isKing71 = false;
                      } else if (data == "red") {
                        isRed71 = true;
                        isKing71 = false;
                      }

                      if (data == "blackKing") {
                        isRed71 = false;
                        isKing71 = true;
                      } else if (data == "redKing") {
                        isRed71 = true;
                        isKing71 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece72 && isRed72 && !isKing72
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece72 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "72";
                                  },
                                )),
                              ),
                            )
                          : hasPiece72 && !isRed72 && !isKing72
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece72 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "72";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece72 && isRed72 && isKing72
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece72 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "72";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece72 && !isRed72 && isKing72
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece72 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "72";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "61" || fromSpot == "62") &&
                        !hasPiece72 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "81" || fromSpot == "82") &&
                        !hasPiece72 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "51" &&
                        !hasPiece72 &&
                        hasPiece61 &&
                        data != "red" &&
                        !(isRed61 == isRed51)) {
                      hasPiece61 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "53" &&
                        !hasPiece72 &&
                        hasPiece62 &&
                        data != "red" &&
                        !(isRed62 == isRed53)) {
                      hasPiece62 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece72 = true;
                      if (data == "black") {
                        isRed72 = false;
                        isKing72 = false;
                      } else if (data == "red") {
                        isRed72 = true;
                        isKing72 = false;
                      }

                      if (data == "blackKing") {
                        isRed72 = false;
                        isKing72 = true;
                      } else if (data == "redKing") {
                        isRed72 = true;
                        isKing72 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece73 && isRed73 && !isKing73
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece73 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "73";
                                  },
                                )),
                              ),
                            )
                          : hasPiece73 && !isRed73 && !isKing73
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece73 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "73";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece73 && isRed73 && isKing73
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece73 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "73";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece73 && !isRed73 && isKing73
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece73 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "73";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "63" || fromSpot == "62") &&
                        !hasPiece73 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "83" || fromSpot == "82") &&
                        !hasPiece73 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "54" &&
                        !hasPiece73 &&
                        hasPiece63 &&
                        data != "red" &&
                        !(isRed63 == isRed54)) {
                      hasPiece63 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "52" &&
                        !hasPiece73 &&
                        hasPiece62 &&
                        data != "red" &&
                        !(isRed62 == isRed52)) {
                      hasPiece62 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece73 = true;
                      if (data == "black") {
                        isRed73 = false;
                        isKing73 = false;
                      } else if (data == "red") {
                        isRed73 = true;
                        isKing73 = false;
                      }

                      if (data == "blackKing") {
                        isRed73 = false;
                        isKing73 = true;
                      } else if (data == "redKing") {
                        isRed73 = true;
                        isKing73 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece74 && isRed74 && !isKing74
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece74 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "74";
                                  },
                                )),
                              ),
                            )
                          : hasPiece74 && !isRed74 && !isKing74
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece74 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "74";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece74 && isRed74 && isKing74
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece74 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "74";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece74 && !isRed74 && isKing74
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece74 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "74";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "63" || fromSpot == "64") &&
                        !hasPiece74 &&
                        data != "red") {
                      return true;
                    } else if ((fromSpot == "83" || fromSpot == "84") &&
                        !hasPiece74 &&
                        data != "black") {
                      return true;
                    } else if (fromSpot == "53" &&
                        !hasPiece74 &&
                        hasPiece63 &&
                        data != "red" &&
                        !(isRed63 == isRed53)) {
                      hasPiece63 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece74 = true;
                      if (data == "black") {
                        isRed74 = false;
                        isKing74 = false;
                      } else if (data == "red") {
                        isRed74 = true;
                        isKing74 = false;
                      }

                      if (data == "blackKing") {
                        isRed74 = false;
                        isKing74 = true;
                      } else if (data == "redKing") {
                        isRed74 = true;
                        isKing74 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
              ],
            ),
            Row(
              //ROW 8
              children: [
                Container(
                    width: 20.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    )),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece81 && isRed81 && !isKing81
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece81 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "81";
                                  },
                                )),
                              ),
                            )
                          : hasPiece81 && !isRed81 && !isKing81
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece81 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "81";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece81 && isRed81 && isKing81
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece81 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "81";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece81 && !isRed81 && isKing81
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece81 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "81";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "71" || fromSpot == "72") &&
                        !hasPiece81 &&
                        data != "red") {
                      return true;
                    } else if (fromSpot == "62" &&
                        !hasPiece81 &&
                        hasPiece72 &&
                        data != "red" &&
                        !(isRed72 == isRed62)) {
                      hasPiece72 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece81 = true;
                      if (data == "black") {
                        isRed81 = false;
                        isKing81 = true;
                      } else if (data == "red") {
                        isRed81 = true;
                        isKing81 = false;
                      }

                      if (data == "blackKing") {
                        isRed81 = false;
                        isKing81 = true;
                      } else if (data == "redKing") {
                        isRed81 = true;
                        isKing81 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece82 && isRed82 && !isKing82
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece82 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "82";
                                  },
                                )),
                              ),
                            )
                          : hasPiece82 && !isRed82 && !isKing82
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece82 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "82";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece82 && isRed82 && isKing82
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece82 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "82";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece82 && !isRed82 && isKing82
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece82 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "82";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "72" || fromSpot == "73") &&
                        !hasPiece82 &&
                        data != "red") {
                      return true;
                    } else if (fromSpot == "61" &&
                        !hasPiece82 &&
                        hasPiece72 &&
                        data != "red" &&
                        !(isRed72 == isRed61)) {
                      hasPiece72 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "63" &&
                        !hasPiece82 &&
                        hasPiece73 &&
                        data != "red" &&
                        !(isRed73 == isRed63)) {
                      hasPiece73 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece82 = true;
                      if (data == "black") {
                        isRed82 = false;
                        isKing82 = true;
                      } else if (data == "red") {
                        isRed82 = true;
                        isKing82 = false;
                      }

                      if (data == "blackKing") {
                        isRed82 = false;
                        isKing82 = true;
                      } else if (data == "redKing") {
                        isRed82 = true;
                        isKing82 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece83 && isRed83 && !isKing83
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece83 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "83";
                                  },
                                )),
                              ),
                            )
                          : hasPiece83 && !isRed83 && !isKing83
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece83 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "83";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece83 && isRed83 && isKing83
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece83 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "83";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece83 && !isRed83 && isKing83
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece83 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "83";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "74" || fromSpot == "73") &&
                        !hasPiece83 &&
                        data != "red") {
                      return true;
                    } else if (fromSpot == "64" &&
                        !hasPiece83 &&
                        hasPiece74 &&
                        data != "red" &&
                        !(isRed74 == isRed64)) {
                      hasPiece74 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else if (fromSpot == "62" &&
                        !hasPiece83 &&
                        hasPiece73 &&
                        data != "red" &&
                        !(isRed73 == isRed62)) {
                      hasPiece73 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece83 = true;
                      if (data == "black") {
                        isRed83 = false;
                        isKing83 = true;
                      } else if (data == "red") {
                        isRed83 = true;
                        isKing83 = false;
                      }

                      if (data == "blackKing") {
                        isRed83 = false;
                        isKing83 = true;
                      } else if (data == "redKing") {
                        isRed83 = true;
                        isKing83 = true;
                      }
                    });
                  },
                ),
                Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    )),
                DragTarget(
                  builder:
                      (context, List<String?> candidateData, rejectedData) {
                    return Center(
                      child: hasPiece84 && isRed84 && !isKing84
                          ? Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: Container(
                                color: Colors.black,
                                height: 40.0,
                                width: 40.0,
                                child: Center(
                                    child: Draggable(
                                  data: "red",
                                  child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  feedback: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                  childWhenDragging: Container(),
                                  onDragCompleted: () {
                                    hasPiece84 = false;
                                  },
                                  onDragStarted: () {
                                    fromSpot = "84";
                                  },
                                )),
                              ),
                            )
                          : hasPiece84 && !isRed84 && !isKing84
                              ? Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 40.0,
                                    width: 40.0,
                                    child: Center(
                                        child: Draggable(
                                      data: "black",
                                      child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      feedback: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xff124d4e),
                                            shape: BoxShape.circle,
                                          )),
                                      childWhenDragging: Container(),
                                      onDragCompleted: () {
                                        hasPiece84 = false;
                                      },
                                      onDragStarted: () {
                                        fromSpot = "84";
                                      },
                                    )),
                                  ),
                                )
                              : hasPiece84 && isRed84 && isKing84
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: Container(
                                        color: Colors.black,
                                        height: 40.0,
                                        width: 40.0,
                                        child: Center(
                                            child: Draggable(
                                          data: "redKing",
                                          child: Container(
                                              width: 30.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          feedback: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/crown.png'),
                                                ),
                                              )),
                                          childWhenDragging: Container(),
                                          onDragCompleted: () {
                                            hasPiece84 = false;
                                          },
                                          onDragStarted: () {
                                            fromSpot = "84";
                                          },
                                        )),
                                      ),
                                    )
                                  : hasPiece84 && !isRed84 && isKing84
                                      ? Padding(
                                          padding: EdgeInsets.only(top: 0.0),
                                          child: Container(
                                            color: Colors.black,
                                            height: 40.0,
                                            width: 40.0,
                                            child: Center(
                                                child: Draggable(
                                              data: "blackKing",
                                              child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              feedback: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff124d4e),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/crown.png'),
                                                    ),
                                                  )),
                                              childWhenDragging: Container(),
                                              onDragCompleted: () {
                                                hasPiece84 = false;
                                              },
                                              onDragStarted: () {
                                                fromSpot = "84";
                                              },
                                            )),
                                          ),
                                        )
                                      : Container(
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.black,
                                        ),
                    );
                  },
                  onWillAccept: (data) {
                    if ((fromSpot == "74") && !hasPiece84 && data != "red") {
                      return true;
                    } else if (fromSpot == "63" &&
                        !hasPiece84 &&
                        hasPiece74 &&
                        data != "red" &&
                        !(isRed74 == isRed63)) {
                      hasPiece74 = false;
                      if (data == "black" || data == "blackKing") {
                        p1Pieces--;
                      } else if (data == "red" || data == "redKing") {
                        p2Pieces--;
                      }
                      return true;
                    } else {
                      return false;
                    }
                  },
                  onAccept: (data) {
                    setState(() {
                      hasPiece84 = true;
                      if (data == "black") {
                        isRed84 = false;
                        isKing84 = true;
                      } else if (data == "red") {
                        isRed84 = true;
                        isKing84 = false;
                      }

                      if (data == "blackKing") {
                        isRed84 = false;
                        isKing84 = true;
                      } else if (data == "redKing") {
                        isRed84 = true;
                        isKing84 = true;
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
