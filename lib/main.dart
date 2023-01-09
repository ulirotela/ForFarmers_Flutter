import 'package:farmapp/layout/screen_layout.dart';
import 'package:farmapp/model/product_model.dart';
import 'package:farmapp/providers/user_details_provider.dart';
import 'package:farmapp/screens/product_screen.dart';
import 'package:farmapp/screens/results_screen.dart';
import 'package:farmapp/screens/sell_screen.dart';
import 'package:farmapp/screens/sign_in_screen.dart';
import 'package:farmapp/utils/color_themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyCz5xnNjn1ScVRuwX0dbM6RgpER_WNZGTU",
      authDomain: "farmapp-42387.firebaseapp.com",
      projectId: "farmapp-42387",
      storageBucket: "farmapp-42387.appspot.com",
      messagingSenderId: "435723415535",
      appId: "1:435723415535:web:92741eee7bca2a490fd01a",
    ));
    runApp(const Farmapp());
  } else {
    await Firebase.initializeApp();
    runApp(const Farmapp());
  }
}

class Farmapp extends StatelessWidget {
  const Farmapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserDetailsProvider())],
      child: MaterialApp(
        title: "Farmapp",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, AsyncSnapshot<User?> user) {
              if (user.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(87, 18, 84, 6),
                  ),
                );
              } else if (user.hasData) {
                return const ScreenLayout();
                // return const SellScreen();
              } else {
                return const SignInScreen();
              }
            }),
      ),
    );
  }
}
