// import 'package:conversify/pages/login/view/login_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class LoginModuleProvider extends ChangeNotifier {
//   bool _isAPICallProcess = false;

//   ////[Getters]/////
//   bool get isAPICallProcess => _isAPICallProcess;

//   loginWithEmailAndPassword() async {
//     final form = loginFormKey.currentState;
//     if (form != null) {
//       if (form.validate()) {
//         form.save();
//         setState(() {
//           isAPICallProcess = true;
//         });
//         try {
//           await FirebaseAuth.instance
//               .signInWithEmailAndPassword(
//                   email: loginEmailController.text.trim(),
//                   password: loginPasswordController.text.trim())
//               .then((value) {
//             setState(() {
//               isAPICallProcess = false;
//             });
//             SnackBar snackBar = const SnackBar(
//               content: Text('Logged in successfully.'),
//             );
//             debugPrint('////////////////////////////////////////////');
//             debugPrint(FirebaseAuth.instance.currentUser.toString());
//             debugPrint('////////////////////////////////////////////');
//             prefs!.setBool('login', true);
//             prefs!.setString(
//               'user',
//               FirebaseAuth.instance.currentUser!.uid.toString(),
//             );
//             ScaffoldMessenger.of(
//               scaffoldKey.currentContext!,
//             ).showSnackBar(snackBar);
//             Navigator.pushReplacementNamed(
//               context,
//               Splash.routeName,
//             );
//           });
//         } on FirebaseAuthException catch (e) {
//           if (e.code == 'user-not-found') {
//             setState(() {
//               isAPICallProcess = false;
//             });
//             debugPrint('No user found for that email.');
//             SnackBar snackBar = const SnackBar(
//               content: Text('No user found for that email.'),
//             );
//             ScaffoldMessenger.of(scaffoldKey.currentContext!)
//                 .showSnackBar(snackBar);
//           } else if (e.code == 'wrong-password') {
//             setState(() {
//               isAPICallProcess = false;
//             });
//             debugPrint('Wrong password provided for that user.');
//             SnackBar snackBar = const SnackBar(
//               content: Text('The password that you have entered is wrong.'),
//             );
//             ScaffoldMessenger.of(scaffoldKey.currentContext!)
//                 .showSnackBar(snackBar);
//           }
//         }
//       }
//     }
//   }
// }
