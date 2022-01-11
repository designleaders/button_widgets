import 'package:button_widgets/responsive_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Button_Widgets());
}

class Button_Widgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Page'),
        ),
        body: Padding(
            padding: EdgeInsets.all(5),
            child: ResponsivePage(
                mobile: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildContainerMedthod(),
                    SizedBox(
                      height: 10,
                    ),
                    buildTextMedthod(),
                  ],
                ),
                tab: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: buildContainerMedthod(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 2,
                        child: buildTextMedthod(),
                      )
                    ],
                  ),
                ),
                destop: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: buildContainerMedthod(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: buildTextMedthod(),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }

  Text buildTextMedthod() {
    return Text(
      'This is the title fo the article\n\n this the details of the whole page\n where every details willbe discussion according to the title and the image showing above it.',
      style: TextStyle(
        fontSize: 30,
      ),
    );
  }

  Container buildContainerMedthod() {
    return Container(
      width: 350,
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.red,
          Colors.orange,
        ]),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
