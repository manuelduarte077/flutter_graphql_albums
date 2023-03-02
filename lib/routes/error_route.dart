import 'package:flutter/cupertino.dart';

class ErrorRoutes extends StatelessWidget {
  const ErrorRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle:  Text('Error'),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 24,
            right: 24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '404',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    letterSpacing: 2,
                    color: Color(0xff2f3640),
                    fontFamily: 'Anton',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sorry, we couldn't find the page!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff2f3640),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
