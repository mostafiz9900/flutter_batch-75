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
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Stack widget')),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                // textDirection: TextDirection.rtl,
                clipBehavior: Clip.none,
                children: [
                  Container(
                      width: 250.0, height: 250.0, color: Color(0xFF856704)),
                  Container(
                      width: 230.0, height: 230.0, color: Color(0xB6DB5203)),
                  Positioned(
                    top: -50.0,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        // color: Color(0xFF856704),
                        borderRadius: BorderRadius.circular(80.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(color: Colors.red),
                          BoxShadow(color: Colors.green.shade300),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          titlePadding: EdgeInsets.all(0.0),
                          title: Container(
                            padding: EdgeInsets.all(10.0),
                            // color: Colors.amber,
                            child: Text('Save Information'),
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                            
                              gradient: LinearGradient(
                                colors: [ 
                                   Colors.red,
                                    Colors.green
                                ]
                              )
                            )
                            ),
                          content: Text('are you save data'),
                          actions: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Yes'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('No'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('SaveButton'))
            ],
          ),
        ));
  }
}
