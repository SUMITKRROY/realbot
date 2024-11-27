
import 'package:flutter/material.dart';

import 'dart:developer';

import '../utils/Utils.dart';
import '../utils/app_color.dart';
import 'Login/Login_Screen.dart';


class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {



  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          backgroundColor: AppColors.white,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: ListView(
              children: [
                SizedBox(
                  height: height * 0.020,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/bot.png',
                    width: 120,
                    height: 120,
                  ),

                ),
                SizedBox(
                  height: height * 0.020,
                ),
                Align(
                  alignment: Alignment.center,
                  child:  Text(
                    "Welcome",
                    style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 40,
                        color: AppColors.Textcolorheading,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'real ',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 20,
                            )),
                        const TextSpan(
                          text: 'bot',
                          style: TextStyle(
                            color: AppColors.primaryColorpink,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.030,
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: AppColors.bordercontainergreyinside,
                      border: Border.all(color: AppColors.bordergrey)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Image.asset('assets/images/search.png'),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                        child: Text(
                          "Continue with Google",
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      color: AppColors.bordercontainergreyinside,
                      border: Border.all(color: AppColors.bordergrey)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Image.asset('assets/Facebook.png'),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                        child: Text(
                          "Continue with Facebook",
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: Divider(
                        indent: 20.0,
                        endIndent: 10.0,
                        thickness: 1,
                      ),
                    ),
                    Text(
                      "OR",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 10.0,
                        endIndent: 20.0,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                InkWell(
                    child: Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          color: AppColors.bordercontainergreyinside,
                          border: Border.all(color: AppColors.bordergrey)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                              icon: Image(
                                image: AssetImage('assets/Shape.png'),
                              ),
                              iconSize: 25,
                              onPressed: () {

                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                            child: Text(
                              "Continue with Email",
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      // Utils.checkLogin=true;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const LoginScreen()));
                      //(Route<dynamic> route) => true);
                    }),
                SizedBox(
                  height: height * 0.010,
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      //Utils.checkLogin=false;
                      // PrefUtils.setLogin(false);
                      /*   Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const dashboardScreen(selectedIndex: 0,)),
                              (Route<dynamic> route) => false
                      );*/
                      // (Route<dynamic> route) => false);
                      //signup screen
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(30, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    child:  Text(
                      "Continue as a Guest",
                      style: TextStyle(
                        shadows: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, -2),
                          ),
                        ],

                        decoration: TextDecoration.underline,
                        fontFamily: 'SourceSansPro',
                        color: Colors.transparent,
                        fontWeight: FontWeight.w600,
                        decorationColor: Colors.black12,
                        decorationThickness: 1.5,
                        fontSize: 17,
                        decorationStyle:
                        TextDecorationStyle.solid,
                      ),
                      // style: TextStyle(
                      //   decoration: TextDecoration.underline,
                      //   fontFamily: 'SourceSansPro',
                      //   color: AppColors.underlineTextcolorheading,
                      //   decorationStyle: TextDecorationStyle.solid,
                      //   fontWeight: FontWeight.w600,
                      //   decorationThickness: 1.0,
                      //   fontSize: 17,
                      // ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }



}
// class ChatUser extends Equatable {
//   final String id;
//   final String photoUrl;
//   final String displayName;
//   final String phoneNumber;
//   final String aboutMe;
//
//   const ChatUser(
//       {required this.id,
//         required this.photoUrl,
//         required this.displayName,
//         required this.phoneNumber,
//         required this.aboutMe});
//
//
// }
// class AuthProvider extends ChangeNotifier {
//   final GoogleSignIn googleSignIn;
//   final FirebaseAuth firebaseAuth;
//   final FirebaseFirestore firebaseFirestore;
//   final SharedPreferences prefs;
//
//   Status _status = Status.uninitialized;
//
//   Status get status => _status;
//
//   AuthProvider(
//       {required this.googleSignIn,
//         required this.firebaseAuth,
//         required this.firebaseFirestore,
//         required this.prefs});
//
//   String? getFirebaseUserId() {
//     return prefs.getString(FirestoreConstants.id);
//   }
//
//   Future<bool> isLoggedIn() async {
//     bool isLoggedIn = await googleSignIn.isSignedIn();
//     if (isLoggedIn &&
//         prefs.getString(FirestoreConstants.id)?.isNotEmpty == true) {
//       return true;
//     } else {
//       return false;
//     }
//   }
//
//   Future<bool> handleGoogleSignIn() async {
//     _status = Status.authenticating;
//     notifyListeners();
//
//     GoogleSignInAccount? googleUser = await googleSignIn.signIn();
//     if (googleUser != null) {
//       GoogleSignInAuthentication? googleAuth = await googleUser.authentication;
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//
//       User? firebaseUser =
//           (await firebaseAuth.signInWithCredential(credential)).user;
//
//       if (firebaseUser != null) {
//         final QuerySnapshot result = await firebaseFirestore
//             .collection(FirestoreConstants.pathUserCollection)
//             .where(FirestoreConstants.id, isEqualTo: firebaseUser.uid)
//             .get();
//         final List<DocumentSnapshot> document = result.docs;
//         if (document.isEmpty) {
//           firebaseFirestore
//               .collection(FirestoreConstants.pathUserCollection)
//               .doc(firebaseUser.uid)
//               .set({
//             FirestoreConstants.displayName: firebaseUser.displayName,
//             FirestoreConstants.photoUrl: firebaseUser.photoURL,
//             FirestoreConstants.id: firebaseUser.uid,
//             "createdAt: ": DateTime.now().millisecondsSinceEpoch.toString(),
//             FirestoreConstants.chattingWith: null
//           });}