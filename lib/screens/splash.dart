import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111111),
      body: Column(
        children: [
          Expanded(
            flex: 28,
            child: Container(
              padding: const EdgeInsets.all(50),
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/forum.png',
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset('assets/images/prod.png'),
                Container(
                  height: 45,
                  width: 2,
                  color: const Color(0xff4D4D4D),
                ),
                Image.asset('assets/images/ig.png')
              ]),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(height: 10),
          )
        ],
      ),
    );
  }
}
