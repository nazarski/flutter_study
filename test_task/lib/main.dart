import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_task/pages/auth_page.dart';
import 'package:test_task/screens/chat_screen.dart';
import 'package:test_task/screens/login_screen.dart';
import 'package:test_task/screens/registration_screen.dart';
import 'package:test_task/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      storageBucket: 'chatapp-80dfa.appspot.com',
        apiKey: 'AIzaSyCF-nTK3doogW-NgCv22y9QH2xRx81kwKw',
        appId: '1:116983062628:android:83aad091b86d0685453f71',
        messagingSenderId: '116983062628',
        projectId: 'chatapp-80dfa'),

  );
  runApp(MaterialApp(
    home: FlashChat(),
  ));
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        ChatScreen.id:(context)=> ChatScreen(),
      },
    );
  }
}