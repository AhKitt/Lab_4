import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'package:lab_2/plumber.dart';
 
void main() => runApp(MyApp());
 
class Page2 extends StatefulWidget {
  final Plumber plumber;

  const Page2({Key key,this.plumber}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressAppBar,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(199, 241, 255, 1),
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 186, 247, 1),
          title: Text('Main Screen'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
            child: Container(
              child: Text('Page2'),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackPressAppBar() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ));
    return Future.value(false);
  }
}