import 'package:shared_preferences/shared_preferences.dart';
import 'package:ShopAfrika/screens/chat/chat_screen.dart';
import 'package:ShopAfrika/screens/checkout/checkout_screen.dart';
import 'package:ShopAfrika/screens/coupons/coupons_screen.dart';
import 'package:ShopAfrika/screens/onboarding/onboarding_screen.dart';
import 'package:ShopAfrika/screens/orders/orders_screen.dart';
import 'package:ShopAfrika/screens/register-login/main_screen.dart';
import 'package:ShopAfrika/screens/settings/settings_screen.dart';
import 'package:ShopAfrika/screens/wishlist/wishlist.dart';
import 'package:ShopAfrika/widgets/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

int initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Afrika',
        theme: ThemeData(
            // primarySwatch: Colors.yellow[700],
            // visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
        // initialRoute: initScreen == 0 || initScreen == null ? "/" : "/root",
        initialRoute: '/root',
        routes: {
          '/': (context) => OnboardingScreen(),
          '/root': (context) => Root(),
          '/login': (context) => MainScreen(),
          // '/homePage': (context) => HomePage(),
          // '/register': (context) => RegisterScreen(),
          // '/forgotPassword': (context) => ForgotPassword(),
          // '/messages': (context) => Messages(),
          // '/searchMessage': (context) => SearchMessages(),
          '/chat': (context) => ChatScreen(),
          // '/orders': (context) => Orders(),
          '/wishList': (context) => WishListScreen(),
          '/settings': (context) => SettingsScreen(),
          // '/profile': (context) => Profile(),
          // '/reviews': (context) => Reviews(),
          // '/delivered': (context) => Delivered(),
          '/orders': (context) => OrdersScreen(),
          // '/onTheWay': (context) => OnTheWay(),
          // '/unpaid': (context) => Unpaid(),
          '/coupons': (context) => CouponsScreen(),
          // '/searchPage': (context) => SearchPage(),
          // '/cart': (context) => Cart(),
          // '/account': (context) => Account(),
          '/checkout': (context) => CheckoutScreen(),
          // '/existingCardScreen': (context) => ExistingCardScreen(),
        });
  }
}
