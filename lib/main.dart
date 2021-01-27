import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

// Sinem Ak
// 1306170075

List myArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25];
Stopwatch mytimer = Stopwatch();
final dur = const Duration(seconds: 1);
String stime = "00:00:00.0"; // for elapsed time
String btime = "00:00:00.0"; // for best score
int timeticks = 0;

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schulte Table',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Schulte Table'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 1;

  void initState() {
    myArray.shuffle();
    mytimer.start();
    starttimer();
    super.initState();
  }

  Color colorChange(int counter, int x){ // button colors
    if(x <= counter-1){
      return Colors.green;
    }
    else
      return Colors.white;
  }

  bool vis(int counter){ // for replay button
    if(counter==26)
      return true;
    else
      return false;
  }

  void starttimer(){
    Timer(dur, timerunning);
  }

  void timerunning(){
    if(mytimer.isRunning){
      starttimer();
    }
    setState((){
      stime = mytimer.elapsed.inHours.toString() + ":"
          + (mytimer.elapsed.inMinutes%60).toString() + ":"
          + (mytimer.elapsed.inSeconds%60).toString();
    });
  }

  void bestScore(Stopwatch s){
    int temp;
    if(timeticks == 0){
      temp = s.elapsedTicks;
      timeticks = temp;
      btime = stopwatchtostring(s);
    }
    else{
      if(timeticks > s.elapsedTicks){
        temp = s.elapsedTicks;
        timeticks = temp;
        btime = stopwatchtostring(s);
      }
      else return;
    }
  }

  String stopwatchtostring(Stopwatch s){
    String temp;
    temp = s.elapsed.inHours.toString() + ":"
        + (s.elapsed.inMinutes%60).toString() + ":"
        + (s.elapsed.inSeconds%60).toString() + "."
        + (s.elapsed.inMilliseconds%1000).toString();
    return temp;
  }

  void stoptimer(int count){
    if(count==26){
      mytimer.stop();
      bestScore(mytimer);
    }
    else return;
  }

  void resetCounter() {
    setState(() {
      mytimer.reset();
      counter = 1;
      myArray.shuffle();
      mytimer.start();
      starttimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Best Score: $btime',
                style: TextStyle(
                    fontSize: 25)
            ),
            Text(
              'Time Elapsed: $stime \n',
                style: TextStyle(
                    fontSize: 25)
            ),

            Column(
              children: [
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1),
                  children: [
                    TableRow( children: [
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[0]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[0]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[0]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[1]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[1]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                          if(counter==myArray[1]){
                          setState(() {
                            counter++;
                            stoptimer(counter);
                          }
                          );
                          }
                        },
                      ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[2]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[2]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[2]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[3]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[3]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[3]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[4]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[4]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[4]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                    ]),
                    TableRow( children: [
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[5]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[5]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[5]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[6]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[6]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[6]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[7]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[7]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[7]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[8]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[8]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[8]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[9]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[9]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[9]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                    ]),
                    TableRow( children: [
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[10]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[10]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[10]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[11]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[11]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[11]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[12]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[12]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[12]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[13]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[13]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[13]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[14]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[14]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[14]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                    ]),
                    TableRow( children: [
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[15]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[15]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[15]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[16]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[16]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[16]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[17]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[17]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[17]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[18]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[18]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[18]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[19]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[19]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[19]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                    ]),
                    TableRow( children: [
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[20]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[20]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[20]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[21]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[21]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[21]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[22]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[22]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[22]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[23]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[23]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                            if(counter==myArray[23]){
                              setState(() {
                                counter++;
                                stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                      Column(children:[
                        FlatButton(
                          color: colorChange(counter, myArray[24]),
                          textColor: Colors.black,
                          height: 50.0,
                          child: Text('${myArray[24]}',
                              style: TextStyle(fontSize: 20)),
                          onPressed: () {
                             if(counter==myArray[24]){
                                setState(() {
                                  counter++;
                                  stoptimer(counter);
                              }
                              );
                            }
                          },
                        ),]),
                    ]),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Visibility(
                  visible: vis(counter),
                  child: RaisedButton(
                    color: Colors.orange,
                    child: Text('Replay',
                        style: TextStyle(fontSize: 20)),
                    onPressed: resetCounter,
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}