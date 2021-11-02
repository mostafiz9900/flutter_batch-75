import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SliverAppBarAndSliverList(),
    );
  }
}

class SliverAppBarAndSliverList extends StatelessWidget {
  const SliverAppBarAndSliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,

            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver app Bar'),
              background: FlutterLogo(
                size: 40.0,
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Text('${index}');
          },
          childCount: 80
          
          ))
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello Flutter'),
            SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
                print(selected);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                curve: Curves.easeInCubic,
                height: selected ? 200.0 : 100.0,
                width: selected ? 100.0 : 200.0,
                alignment: selected ? Alignment.center : Alignment.topCenter,
                child: FlutterLogo(),
                color: selected ? Colors.red : Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
