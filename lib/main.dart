import 'package:blinkit_home/providers/address_list_provider.dart';
import 'package:blinkit_home/screens/home_screen.dart';
import 'package:blinkit_home/screens/profile_screen.dart';
import 'package:blinkit_home/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AddressListProvider>(
          create: (_) => AddressListProvider(),
          lazy: false,
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          SplashScreen.route: (_) => const SplashScreen(),
          HomeScreen.route: (_) => const HomeScreen(),
          ProfileScreen.route: (_) => ProfileScreen(),
        },
        initialRoute: SplashScreen.route,
      ),
    );
  }
}
