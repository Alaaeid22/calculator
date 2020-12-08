import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalculatorState();
  }

}

class CalculatorState extends State<MyApp> {
  double result=0.0;
  double firstvalue , secondvalue ;
  void sum() {
    setState(() {
      result = firstvalue + secondvalue;
    });
  }
    void sub() {
      setState(() {
        result = firstvalue - secondvalue ;
      });
  }
  void multiply() {
    setState(() {
      result = firstvalue * secondvalue;
    });
  }
  void divide() {
    setState(() {
      result = firstvalue / secondvalue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Calcultor"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Container(
          margin: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'First Number',
                      ),
                      onChanged: (value){
                        setState(() {
                          firstvalue=double.parse(value);
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child: Text(' ') ,

                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Second Number',
                      ),
                      onChanged: (value){
                        setState(() {
                          secondvalue=double.parse(value);
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('      '),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex:1,
                    child:  RaisedButton(
                      padding: const EdgeInsets.all( 15.0),
                      shape: CircleBorder(),
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          return sum();
                        });
                      },
                      color: Colors.black,
                    ),
                  ),
                  Text('             '),
                  Expanded(
                    flex:1,
                    child:  RaisedButton(
                      padding: const EdgeInsets.all( 15.0),
                      shape: CircleBorder(),
                      child: Text(
                        '-',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          return sub();
                        });
                      },
                      color: Colors.black,
                    ),
                  ),
                  Text('             '),
                  Expanded(
                    flex:1,
                    child:  RaisedButton(
                      padding: const EdgeInsets.all( 15.0),
                      shape: CircleBorder(),

                      child: Text(
                        '*',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          return multiply();
                        });
                      },
                      color: Colors.black,
                    ),
                  ),
                  Text('             '),
                  Expanded(
                    flex:1,
                    child:  RaisedButton(
                      padding: const EdgeInsets.all( 15.0),
                      shape: CircleBorder(),
                      child: Text(
                        '/',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      onPressed: () {
                        setState(() {
                          return divide();
                        });
                      },
                      color: Colors.black,
                    ),

                  ),
                ],
              ),

              Text(
                  'Rusult: $result',
              style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );

  }
}