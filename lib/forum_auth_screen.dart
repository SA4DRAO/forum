import 'package:flutter/material.dart';
import 'package:forum/google_sign_in.dart';
import 'package:provider/provider.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111111),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 100),
            Container(
              padding: const EdgeInsets.all(50),
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage("assets/images/forum.png"),
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff1D1D1D))),
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Image(
                            image: AssetImage(
                                "assets/images/icons8-google-48.png"),
                            width: 30,
                            height: 30,
                            color: null,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Text(
                            "Sign In with Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.6,
                                fontSize: 17),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff313131))),
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                    },
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Image(
                            image: AssetImage(
                                "assets/images/icons8-google-48.png"),
                            width: 30,
                            height: 30,
                            color: null,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Text(
                            "Sign Up with Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.6,
                                fontSize: 17),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Transform.scale(
              scale: 0.4,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(child: Image.asset("assets/images/prod.png")),
                  Container(
                    height: 45,
                    width: 2,
                    color: const Color(0xff4D4D4D),
                  ),
                  Expanded(child: Image.asset("assets/images/ig.png"))
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
