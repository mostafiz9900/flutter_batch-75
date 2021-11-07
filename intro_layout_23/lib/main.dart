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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _customNtwImg(),
            _customTwoText(),
            _costomThreeIcon(),
            _customText(),

          ],
        ),
      ),
    );
  }

  Widget _costomThreeIcon() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.phone,
                color: Colors.amber,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text('Phone')
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.directions,
                color: Colors.amber,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text('Direction')
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.amber,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text('Share')
            ],
          ),
        ],
      ),
    );
  }

  Widget _customText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'A paragraph is a self-contained unit of discourse in writing dealing with a particular point or idea. A paragraph consists of one or more sentences. Though not required by the syntax of any language, paragraphs are usually an expected part of formal writing, used to organize longer prose',
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _customNtwImg() {
    return Container(
      height: 350.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.green.shade300,
          image: DecorationImage(
              image: NetworkImage(
                  'https://media.istockphoto.com/photos/juicy-hamburger-on-white-background-picture-id1206323282?k=20&m=1206323282&s=612x612&w=0&h=yatlq6BHRCCvoTzFZLSwaJc0O8Quct_tRPWtH0dj9Fc='),
              fit: BoxFit.cover)),
    );
  }

  Widget _customTwoText() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Bangladesh',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.favorite_border,
          ),
        ],
      ),
    );
  }
}
