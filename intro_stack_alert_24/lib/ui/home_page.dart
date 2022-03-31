import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AlertDialog _customAlertDialog = AlertDialog(
                      titlePadding:EdgeInsets.all(0.0),
                      title: Container(
                        padding: EdgeInsets.all(10.0),

                        child: Text('Save Data'),
                        
                        decoration: BoxDecoration(
                            // color: Colors.pink,
                            gradient: LinearGradient(colors: [
                              Colors.red.shade500,
                              Colors.grey.shade300
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            )
                        ),
                        ),
                      content: Text('are you save?'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {}, child: Text('yes'.toUpperCase())),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('no'.toUpperCase())),
                      ],
                    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Layout'),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.hardEdge,
            // fit: StackFit.expand,
            // textDirection: TextDirection.rtl,
            children: [
              Container(
                height: 250.0,
                width: 250.0,
                color: Colors.amber.shade400,
              ),
              Container(
                // margin: EdgeInsets.all(40.0),
                height: 200.0,
                width: 200.0,
                color: Colors.black,
              ),
              Positioned(
                bottom: -20.0,
                right: 0.0,
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(90)),
                ),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return _customAlertDialog;
                  },
                );
              },
              child: Text('Save')),
        ],
      ),
    );
  }
}
