import 'package:flutter/material.dart';
import 'package:intro_bottomnavbar_20/pages/card_view.dart';
import 'package:intro_bottomnavbar_20/pages/home_view.dart';
import 'package:intro_bottomnavbar_20/pages/search_view.dart';

class MyHome extends StatefulWidget  {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
      int _selectIndex = 0;

    List<Widget> widgetOption = <Widget>[
        HomeView(),
        CardView(),
         SearchView()
    ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: widgetOption.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: (value) {
          setState(() {
              _selectIndex = value;
          });
        
          print(value);
        },
        backgroundColor: Colors.amber.shade200,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Card'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
