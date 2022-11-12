import 'package:abuys/OTPverificationScreen/Guarantor_verification.dart';
import 'package:abuys/FrontScreen/main_signup_page.dart';
import 'package:abuys/SpaleshScreen/spleash_screen.dart';
import 'package:flutter/material.dart';
import 'OrdersPage/Buyer_orders_page.dart';
import 'ForgotPassword/Guarantor_forgot_password.dart';
import 'ButtomNavigationScreen/Seller_buttom_navigation.dart';
import 'OTPverificationScreen/Transporter_verification.dart';
import 'ButtomNavigationScreen/buttom_navigation.dart';
import 'LoginScreen/buyer_Login.dart';
import 'HomePages/buyer_home_page.dart';
import 'OTPverificationScreen/buyer_verification.dart';
import 'OrdersPage/delivery_details.dart';
import 'PaymentPages/checkOutScreen.dart';
import 'PaymentPages/my_Alert.dart';
import 'PaymentPages/payment_page.dart';
import 'UIs/buyersearchPage.dart';
import 'SignupScreen/buyer_signup_screen.dart';
import 'OrdersPage/delivery_conformation.dart';
import 'ForgotPassword/buyer_forgot_password.dart';
import 'Account_details/guarantor_account_page.dart';
import 'ButtomNavigationScreen/guarantor_buttom_naivebar.dart';
import 'HomePages/guarantor_home_page.dart';
import 'LoginScreen/guarantor_login.dart';
import 'SignupScreen/guarantor_signup_page.dart';
import 'FrontScreen/main_login_page.dart';
import 'Account_details/myAccount_details.dart';
import 'ProductDetailsPage/product_details_page.dart';
import 'SellectTransportPage/sellect_transport_type.dart';
import 'Account_details/seller_account_page.dart';
import 'ForgotPassword/seller_forgot_password.dart';
import 'HomePages/seller_home_page.dart';
import 'LoginScreen/seller_login.dart';
import 'OrdersPage/seller_order_page.dart';
import 'SignupScreen/seller_sign_up.dart';
import 'OTPverificationScreen/seller_verification.dart';
import 'Account_details/transporter_account_page.dart';
import 'ButtomNavigationScreen/transporter_buttom.dart';
import 'HomePages/transporter_home_page.dart';
import 'SignupScreen/transporter_signup_page.dart';
import 'LoginScreen/transportor_Login.dart';
import 'ForgotPassword/transportor_forgot_password.dart';
import 'SellectTransportPage/transportor_pickups.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Fonts',
      // Set Raleway as the default app font.
      initialRoute: '/',
      theme: ThemeData(fontFamily: 'Raleway'),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/': (context) => const LoginScreen(),
        '/login': (context) => const MainLoginPage(),
        '/mainsignup': (context) => const MainSignupPage(),
        '/buyer': (context) => const BuyerVerification(),
        '/seller': (context) => const SellerVerification(),
        '/buyerLogin': (context) => const BuyerLogin(),
        '/sellerLogin': (context) => const SellerLogin(),
        '/transporter': (context) => const TransportorLogin(),
        '/guarantor': (context) => const GuarantorLogin(),
        '/signup': (context) => const CreateAnAccount(),
        '/sellerSignup': (context) => const SellerSignupPage(),
        '/transporterSignup': (context) => const TransporterSignupPage(),
        '/guarantorSignup': (context) => const GuarantorSignupPage(),
        '/transportorpickups': (context) => const TransportorPickups(),
        '/deliveryConformation': (context) => const DeliveryConformation(),
        '/buyerhomepage': (context) => const BuyerHomePage(),
        '/sellerhomepage': (context) => const SellerHomePage(),
        '/bottomNavigation': (context) => const MyHomePage(),
        '/buyerSearchPage': (context) => const BuyerSearchPage(),
        '/forgotPassword': (context) => const BuyerForgotPassword(),
        '/sellerforgotPassword': (context) => const SellerForgotPassword(),
        '/transporterforgotPassword': (context) =>
            const TransporterForgotPassword(),
        '/guarantorforgotPassword': (context) =>
            const GuarantorForgotPassword(),
        '/transporterVerification': (context) =>
            const TransporterVerification(),
        '/guarantorVerification': (context) => const GuarantorVerification(),
        '/myAccountPage': (context) => const MyAccountPage(),
        '/sellerButtomNavigation': (context) => const SellerButtomNavigation(),
        '/SellerAccountPage': (context) => const SellerAccountPage(),
        '/transporterButtomNaiveBar': (context) =>
            const TransporterButtomNaiveBar(),
        '/transporterHomePage': (context) => const TransporterHomePage(),
        '/transporterAccountPage': (context) => const TransporterAccountPage(),
        '/guarantorButtomNavigation': (context) =>
            const GuarantorButtomNavigation(),
        '/guarantorHomePage': (context) => const GuarantorHomePage(),
        '/guarantorAccountPage': (context) => const GuarantorAccountPage(),
        '/buyerOrderPage': (context) => BuyerOrderPage(),
        '/sellerOrderPage': (context) => SellerOrderPage(),
        '/buyerProductDetails': (context) => BuyerProductDetails(),
        '/sellectTransportType': (context) => SellectTransportType(),
        '/checkOutPage': (context) => CheckOutPage(),
        '/paymentPage': (context) => PaymentPage(),
        '/myAlert': (context) => MyAlert(),
        '/deliveryDetails': (context) => DeliveryDetails(),
      },
    );
  }
}
