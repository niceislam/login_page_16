import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../login_body.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Container(
                height: 380,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent.withAlpha(60),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: Column(
                    spacing: 35,
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            "Name* :",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                          BorderSide(color: Colors.blue))),
                            ),
                          )
                        ],
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            "E-mail* :",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                          BorderSide(color: Colors.blue))),
                            ),
                          )
                        ],
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            "Phone* :",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                          BorderSide(color: Colors.blue))),
                            ),
                          )
                        ],
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            "Password* :",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                          BorderSide(color: Colors.blue))),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () async{
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (c) => LoginBody()));
                  await EasyLoading.showSuccess("success");
                },
                child: Card(
                  color: Colors.blue,
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width / 2,
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
