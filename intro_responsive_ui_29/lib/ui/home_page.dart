import 'package:flutter/material.dart';
import './responsive_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeGet = MediaQuery.of(context).size.width;
    print(sizeGet);
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Ui'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(
              children: [createTextWidget(), createCustomWidget()],
            );
          } else {
            return Row(
              children: [createTextWidget(), createCustomWidget()],
            );
          }
        },
      ),

      /* ResponsiveWidget(
          mobile: Column(
            children: [createTextWidget(), createCustomWidget()],
          ),
          tab: Row(
            children: [
              Expanded(
                child: createTextWidget(),
              ),
              Expanded(
                child: createCustomWidget(),
              )
            ],
          ),
        ) */

      /* LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'This gives you the size, orientation, etc, of your current app. This is more useful if you want to make decisions'),
              ),
              Container(
                height: 200.0,
                width: 240.5,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20.0)),
              )
            ],
          );
        }else{
  return Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'This gives you the size, orientation, etc, of your current app. This is more useful if you want to make decisions'),
              ),
            ),
            Expanded(
              child: Container(
                height: 200.0,
                width: 240.5,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            )
          ],
        );
        }
      
      }
      ), */
    );
  }

  Container createCustomWidget() {
    return Container(
      height: 200.0,
      width: 240.5,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(20.0)),
    );
  }

  Padding createTextWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
          'This gives you the size, orientation, etc, of your current app. This is more useful if you want to make decisions'),
    );
  }
}
