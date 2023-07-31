import 'package:auth_app/service/google_sign_in_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Auth App para Google y Apple'),
              actions: [
                IconButton(
                    onPressed: () async {
                      await GoogleSignInService.signOut();
                    },
                    icon: const Icon(FontAwesomeIcons.doorOpen))
              ],
            ),
            body: Container(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                        splashColor: Colors.transparent,
                        minWidth: double.infinity,
                        height: 40,
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        onPressed: () async {
                          await GoogleSignInService.signInWithGoogle();
                          //TODO Sign In with Google
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                            ),
                            Text('   Sign in with Google',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        ))
                  ],
                ),
              ),
            )));
  }
}
