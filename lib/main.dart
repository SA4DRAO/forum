import 'package:flutter/material.dart';
import 'package:forum/forum_auth_screen.dart';
import 'package:forum/google_sign_in.dart';
import 'package:forum/profile.dart';
import 'package:forum/widgets/event.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          useMaterial3: true,
        ),
        home: const Authentication(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111111),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        backgroundColor: const Color(0xff111111),
        title: Image.asset(
          'assets/images/forum.png',
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height * 0.026,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            icon: Image.asset(
              'assets/images/Profileicon.png',
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Center(
              child: Text(
                "Here's what's happening in campus!",
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
            ),
          ),
          const Expanded(
            child: EventCard(),
          )
        ],
      ),
    );
  }
}
