import 'package:flutter/material.dart';

class RegisterModuleProvider extends ChangeNotifier {
  bool _isAPICallProcess = false;

  ////[Getters]/////
  bool get isAPICallProcess => _isAPICallProcess;

  signUp(
    BuildContext context,
    GlobalKey<FormState> signUpFormKey,
    GlobalKey<ScaffoldState> scaffoldKey,
    String email,
    String pwd,
  ) async {
    // final form = signUpFormKey.currentState;
    // if (form != null) {
    //   if (form.validate()) {
    //     form.save();
    //     _isAPICallProcess = true;
    //     await Future.delayed(const Duration(milliseconds: 100), () {});
    //     notifyListeners();
    //     try {
    //       await FirebaseAuth.instance
    //           .createUserWithEmailAndPassword(email: email, password: pwd)
    //           .then((_) {
    //         _isAPICallProcess = false;
    //         Future.delayed(const Duration(milliseconds: 100), () {});
    //         notifyListeners();
    //         SnackBar snackBar = const SnackBar(
    //           content:
    //               Text('kudos! Your account has been created successfully.'),
    //         );
    //         ScaffoldMessenger.of(scaffoldKey.currentContext!)
    //             .showSnackBar(snackBar);
    //         Navigator.pushNamedAndRemoveUntil(
    //             context, LoginPage.routeName, (r) => false);
    //       });
    //     } on FirebaseAuthException catch (e) {
    //       if (e.code == 'weak-password') {
    //         _isAPICallProcess = false;
    //         Future.delayed(const Duration(milliseconds: 100), () {});
    //         notifyListeners();
    //         debugPrint('The password provided is too weak.');
    //         SnackBar snackBar = const SnackBar(
    //           content: Text('The password provided is too weak.'),
    //         );
    //         ScaffoldMessenger.of(scaffoldKey.currentContext!)
    //             .showSnackBar(snackBar);
    //       } else if (e.code == 'email-already-in-use') {
    //         _isAPICallProcess = false;
    //         Future.delayed(const Duration(milliseconds: 100), () {});
    //         notifyListeners();
    //         debugPrint('The account already exists for that email.');
    //         SnackBar snackBar = const SnackBar(
    //           content: Text('The account already exists for that email.'),
    //         );
    //         ScaffoldMessenger.of(scaffoldKey.currentContext!)
    //             .showSnackBar(snackBar);
    //       }
    //     } catch (e) {
    //       debugPrint(e.toString());
    //     } finally {
    //       _isAPICallProcess = false;
    //       notifyListeners();
    //     }
    //   }
    // }
  }

  // getAppCustomers() async {
  //   _isApiCallProcess = true;
  //   _networkErrorMsg = '';
  //   await Future.delayed(const Duration(milliseconds: 100), () {});
  //   notifyListeners();
  //   try {
  //     getCustomersRequestModel.skip = _pageSkip;
  //     getCustomersRequestModel.limit = _pageLimit;
  //     var response = await getCustomers(getCustomersRequestModel);
  //     _customers.clear();
  //     _customers = List<Map<String, dynamic>>.from(response['customers']);
  //     _totalDocuments = response['total_documents'];
  //   } catch (error) {
  //     _networkErrorMsg = error.toString();
  //   } finally {
  //     _isApiCallProcess = false;
  //     notifyListeners();
  //   }
  // }

  // addAppCustomer(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey,
  //     AddCustomerRequestModel addCustomerRequestModel) async {
  //   _isApiCallProcess = true;
  //   await Future.delayed(const Duration(milliseconds: 100), () {});
  //   notifyListeners();
  //   try {
  //     var response = await addCustomer(addCustomerRequestModel);
  //     if (response['message'] != null && response['message']!.isNotEmpty) {
  //       final snackBar = SnackBar(
  //         content: Text(response['message']!),
  //       );
  //       ScaffoldMessenger.of(scaffoldKey.currentContext!)
  //           .showSnackBar(snackBar);
  //       Navigator.pop(scaffoldKey.currentContext!);
  //     } else {
  //       final snackBar = SnackBar(
  //         content: Text(response['error']!),
  //       );
  //       ScaffoldMessenger.of(scaffoldKey.currentContext!)
  //           .showSnackBar(snackBar);
  //     }
  //   } catch (error) {
  //     _networkErrorMsg = error.toString();
  //   } finally {
  //     _isApiCallProcess = false;
  //     notifyListeners();
  //   }
  // }
}
