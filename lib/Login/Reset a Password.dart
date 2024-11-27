import 'package:flutter/material.dart';


import '../../utils/app_color.dart';
import '../utils/styles.dart';
import 'Login_Screen.dart';


class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool passwordVisible = false;
  bool passwordVisible1 = false;
  TextEditingController _pass= TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
    passwordVisible1 = true;
  }

  final formKey = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(

          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 26,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

        ),
        body: ListView(
          children: <Widget>[
            Padding(
              // padding: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/welcome.png",
                  height: height*0.055,
                  width: height*0.060,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.020,
            ),
            const Text(
              "Reset a Password",
              style: Styles.headingStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.030,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Text(
                                "New Password",
                                style: Styles.formfieldHeadingText,
                              ),
                              Text(
                                "*",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          controller: _pass,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            RegExp regex=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                            if(value!.isEmpty){
                               return ("Password is required.");
                            }
                            else if(value.length<8){
                              return ("Password must be more than 7 characters.");
                            }
                            else if(!regex.hasMatch(value)){
                              return ("Password should contain upper,lower,digit and special character.");
                            }
                            return null;
                          },
                          // onSaved: (val) => _password = val,
                          obscureText: passwordVisible,
                          decoration: InputDecoration(
                            hintText: 'XXXXXXXXXX',
                            hintStyle: Styles.formfieldhintStyle,
                            suffixIcon: IconButton(
                              color: Colors.grey,
                              icon: Icon(passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(
                                      () {
                                    passwordVisible = !passwordVisible;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.020,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Text(
                                "Confirm New Password",
                                style: Styles.formfieldHeadingText,
                              ),
                              Text(
                                "*",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter conform password.';
                            }
                            if(value!=_pass.text){
                              return ("Please make sure your passwords match.");
                            }
                            return null;
                          },
                          // onSaved: (val) => _password = val,
                          obscureText: passwordVisible1,
                          decoration: InputDecoration(
                            hintText: 'XXXXXXXXXX',
                            hintStyle: Styles.formfieldhintStyle,
                            suffixIcon: IconButton(
                              color: Colors.grey,
                              icon: Icon(passwordVisible1
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(
                                      () {
                                    passwordVisible1 = !passwordVisible1;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.030,
                  ),
                  SizedBox(
                    height: height * 0.067,
                    width: width * 362,
                    child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const LoginScreen()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.primaryColorpink, // background
                          ),
                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                          label: const Align(
                              child: Text(
                                "RESET PASSWORD",
                                style: TextStyle(
                                  fontFamily: 'NotoSans',
                                  fontSize: 20,
                                  // color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                              )),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
