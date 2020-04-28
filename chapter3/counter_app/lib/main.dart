import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/physics.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(
          title: 'Hot Reload Demo!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class SubmiteButton extends StatelessWidget{
  final String buttonText;

  SubmiteButton.named([this.buttonText="Submit"]);

  Widget build(context){
    return FloatingActionButton(
      child: Text(buttonText),
    );
  }
}

class FancyButton extends StatefulWidget{
  @override
  final VoidCallback onPressed;
  final Widget child;
  const FancyButton({Key key, this.onPressed,this.child}) : super(key: key);
  State<StatefulWidget> createState()  => _FancyButtonState();
}
class _FancyButtonState extends State<FancyButton>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: _getColors(),
        child: widget.child,
        onPressed: widget.onPressed
      ),
    );
  }
  Color _getColors(){
    return _buttonColors.putIfAbsent(this, () => colors[next(0, 5)]);
  }
}

Map<_FancyButtonState, Color> _buttonColors = {};
final _random = Random();
int next(int min, int max) => min + _random.nextInt(max - min);
List<Color> colors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.purple,
  Colors.amber,
  Colors.lightBlue,
];

class _MyHomePageState extends State<MyHomePage> {
  int _counter;
  bool _reversed = false;
  List<UniqueKey> _buttonKeys = [UniqueKey(),UniqueKey()];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._counter = 0;
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter(){
    setState(() => _counter = 0);
    _swap();
  }

  void _swap() {
    setState(() {
      _reversed = !_reversed;
    });
  }
  void _decrementCounter(){
    setState(() => _counter-- );
  }

  @override
  Widget build(BuildContext context) {
    final incrementButton = FancyButton(
      child: Text(
        "Increment",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: _incrementCounter,
    );

    final decrementButton = FancyButton(
      child: Text(
        "Decrement",
        style: TextStyle(color: Colors.white),
      ),
    );

    List<Widget> _buttons = <Widget>[incrementButton,decrementButton];

    if(_reversed){
      _buttons = _buttons.reversed.toList();
    }


    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
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
              margin: EdgeInsets.only(bottom: 100.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.25),
                borderRadius: BorderRadius.circular(4.0)
              ),

              child: Image.asset(
                'assets/images/flutter_logo_1080.png',
                width: 100.0,
              ),
            ),

            Text(
              'You have pushed the button this many thimes: ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text(
                      "Decrement",
                      style: TextStyle(color: Colors.white)
                  ),
                  onPressed: _decrementCounter,
                  color: Colors.red
                ),
                RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "Increment",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: _incrementCounter,

                ),
              ],
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
