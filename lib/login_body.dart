import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:login_page_16/login_page_16/controller.dart';
import 'package:login_page_16/login_page_16/sign_up_page.dart';

import 'login_page_16/home_screen.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final FilledText = GlobalKey<FormState>();
  bool eyebutton = true;
  bool chekboxbutton = false;
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: FilledText,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2XwQgyYpavh305zdDja1GY4XDrOiq5Obx9AcbNZ8DTH69lhKO2XtARPckW_6chQUynfI&usqp=CAU"),
                    fit: BoxFit.fitWidth),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: mailController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.blue)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    validator: (value) {
                      if (value == null || value == "") {
                        return "filled can't be empty.";
                      } else if (!value.contains("@") || !value.contains(".")) {
                        return "wrong email.";
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: eyebutton,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.blue)),
                        hintText: "Password",
                        suffixIcon: InkWell(
                          onTap: () {
                            eyebutton = !eyebutton;
                            setState(() {});
                          },
                          child: eyebutton == false
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                    validator: (value) {
                      if (value == null || value == "") {
                        return "filled can't be empty.";
                      } else if (value.length < 8) {
                        return "password not secure.";
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: chekboxbutton,
                            activeColor: Colors.green,
                            onChanged: (bool) {
                              chekboxbutton = !chekboxbutton;
                              setState(() {});
                            },
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (c) => SignUp()));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      if (!FilledText.currentState!.validate()) {
                        return;
                      }
                      EasyLoading.show();
                      bool status = await DataController.niceData(
                          mail: '${mailController.text}',
                          password: '${passwordController.text}');
                      log("========$status");
                      if (status) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (c) => SecondScreen()));
                      }
                    },
                    child: Card(
                        color: Colors.blue,
                        child: SizedBox(
                          height: 40,
                          width: MediaQuery.sizeOf(context).width,
                          child: Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
