import "package:flutter/material.dart";
import "package:get/get.dart";
import "../../../config/constants/app_constant.dart";
import "../../../shared/edittext.dart";
import "../../../shared/progress_bar.dart";
import "../pages/rest_password.dart";

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // final LoginController controller = Get.put(LoginController());
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _anAsyncCall = false;
  // String? validateInput(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return "Please enter some text";
  //   } else if (value < 6) {}

  //   return null; // Input is valid
  // }

  @override
  Widget build(BuildContext context) {
    return ProgressBar(
      anAsyncCall: _anAsyncCall,
      child: ProgressBar(
        anAsyncCall: _anAsyncCall,
        child: Scaffold(
          // appBar: setAppBar(),
          body: SingleChildScrollView(
            child: Form(
              key: _loginKey,
              child: Column(
                children: <Widget>[
                  // Container(
                  //     margin: EdgeInsets.only(
                  //         top: AppConstant.screenHeight * 0.03,
                  //         left: AppConstant.screenWidth * 0.07),
                  //     child: const SetTopBackButton()),
                  SizedBox(height: AppConstant.screenHeight * 0.05),
                  Edittext(
                    // image: AppMessage.icon2,
                    hint: " Adresse e_mail ",
                    text: "Adresse e_mail",
                    colorborder: Colors.orange,
                    controller: _emailController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Vide";
                      } else if (!value.contains("@") || !value.contains(".")) {
                        return "Invalid Email";
                      }
                      return null;
                    },
                    isEmail: true,
                  ),
                  SizedBox(height: AppConstant.screenHeight * 0.01),
                  Edittext(
                    // image: AppMessage.icon3,
                    hint: " Mote de passe ",
                    text: "Mot de passe",
                    ispass: true,
                    colorborder: Colors.orange,
                    controller: _passwordController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Vide";
                      } else if (value.length < 6) {
                        return "Entrez un mot de passe supérieur à 6 caractères";
                      }

                      return null; // Input is valid
                    },
                  ),
                  InkWell(
                    onTap: () => Get.to(() => const ResetPassword()),
                    child: Container(
                      margin: EdgeInsets.only(
                          right: AppConstant.screenWidth * 0.13,
                          top: AppConstant.screenHeight * 0.02),
                      alignment: Alignment.topRight,
                      child: const Text(
                        "Mot de pass oublié",
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppConstant.screenHeight * 0.04),
                  OutlinedButton(
                    onPressed: () {
                      
                    },
                    // onPressed: () async {
                    //   if (_loginKey.currentState!.validate()) {
                    //     FocusScope.of(context).unfocus();
                    //     try {
                    //       // setState(() => <void>_anAsyncCall = true);
                    //       final String email = _emailController.text;
                    //       final String password = _passwordController.text;
                    //       final UserCredential credential = await controller
                    //           .signInWithEmailAndPassword(email, password);
                    //       final User user = credential.user!;
                    //       final bool verified = user.emailVerified;
                    //       if (verified) {
                    //         Get.offAll(() => const HomeView());
                    //       } else {
                    //         Get.to(() => const VerifyEmail());
                    //       }
                    //       setState(() => _anAsyncCall = false);
                    //     } on FirebaseAuthException catch (e) {
                    //       setState(() => _anAsyncCall = false);
                    //       final SnackBar snackBar = AppFunction.manageError(e);
                    //       ScaffoldMessenger.of(context)
                    //         ..removeCurrentSnackBar()
                    //         ..showSnackBar(snackBar);
                    //     } catch (e) {
                    //       setState(() => _anAsyncCall = false);
                    //     }
                    //   }
                    // },
                    style: OutlinedButton.styleFrom(
                      // backgroundColor: AppTheme.orange_color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.only(
                          left: AppConstant.screenWidth * 0.28,
                          right: AppConstant.screenWidth * 0.28,
                          top: 15,
                          bottom: 15),
                    ),
                    child: const Text(
                      "Connexion",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: AppConstant.screenHeight * 0.04,
                  ),
                  // Container(
                  //   margin:
                  //       EdgeInsets.only(right: AppConstant.screenWidth * 0.1),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       GestureDetector(
                  //           onTap: () async {
                  //             try {
                  //               setState(() => _anAsyncCall = true);
                  //               final UserCredential? credential =
                  //                   await controller.signInWithGoogle();
                  //               if (credential == null) {
                  //                 setState(() => _anAsyncCall = false);
                  //                 final SnackBar snackBar =
                  //                     AppFunction.snackBar(
                  //                         label: "Email introuvable");
                  //                 ScaffoldMessenger.of(context)
                  //                   ..removeCurrentSnackBar()
                  //                   ..showSnackBar(snackBar);
                  //               } else {
                  //                 final DocumentSnapshot<Map<String, dynamic>>
                  //                     response = await controller.getUser();
                  //                 if (response.exists) {
                  //                   /// TODO Users is Signed
                  //                   setState(() => _anAsyncCall = false);
                  //                   Get.offAll(() => const HomeView());
                  //                 } else {
                  //                   /// TODO Users is not Signed
                  //                   setState(() => _anAsyncCall = false);
                  //                   final SnackBar snackBar =
                  //                       AppFunction.snackBar(
                  //                           label: "User not found");
                  //                   ScaffoldMessenger.of(context)
                  //                     ..removeCurrentSnackBar()
                  //                     ..showSnackBar(snackBar);
                  //                 }
                  //               }
                  //             } on FirebaseAuthException catch (e) {
                  //               setState(() => _anAsyncCall = false);
                  //               final SnackBar snackBar =
                  //                   AppFunction.manageError(e);
                  //               ScaffoldMessenger.of(context)
                  //                 ..removeCurrentSnackBar()
                  //                 ..showSnackBar(snackBar);
                  //             } catch (e) {
                  //               setState(() => _anAsyncCall = false);
                  //               final SnackBar snackBar =
                  //                   AppFunction.snackBar(label: "Erreur");
                  //               ScaffoldMessenger.of(context)
                  //                 ..removeCurrentSnackBar()
                  //                 ..showSnackBar(snackBar);
                  //             }
                  //           },
                  //           child: Circle(nameImg: AppMessage.google_logo)),
                  //       Circle(nameImg: AppMessage.facebook_logo),
                  //       Circle(nameImg: AppMessage.mac_logo),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
