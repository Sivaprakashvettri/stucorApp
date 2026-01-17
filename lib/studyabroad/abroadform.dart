// 

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Abroadform extends StatelessWidget {
  Abroadform({super.key});

  final _formkey = GlobalKey<FormState>();

  RegExp pass_valid = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  bool validatePassword(String pass) {
    String password = pass.trim();
    return pass_valid.hasMatch(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          double contentWidth =
              maxWidth > 650 ? 650 : maxWidth * 0.95;

          return Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [

                  /// 🔹 Top Bar
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 11, 49, 174),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () => Get.back(),
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.white)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("study abroad wait...",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                            Text("form.stucorapp.com",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 8)),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.share, color: Colors.white),
                            SizedBox(width: 8),
                            Icon(Icons.more_vert, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// 🔹 Info Card
                  SizedBox(
                    width: contentWidth,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            "Study Abroad",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Feature coming soon! We’re excited to bring a complete "
                            "study abroad experience. Stay updated and be notified "
                            "as soon as it goes live!",
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// 🔹 Form Section
                  SizedBox(
                    width: contentWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text(
                          "Enter the Details:",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 10),

                        _inputField("Name"),
                        _inputField("Email address"),
                        _inputField("Phone number"),
                        _inputField("UG graduation / passed out year"),

                        const SizedBox(height: 20),

                        /// 🔹 Submit Row
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(
                                          Colors.black)),
                              onPressed: () {
                                _formkey.currentState!.validate();
                              },
                              child:
                                  const Text("Join the waitlist →"),
                            ),
                            Container(
                              height: 30,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black26),
                              ),
                              child: const Icon(
                                BootstrapIcons.asterisk,
                                color: Colors.pink,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// 🔹 Reusable Input Field
  Widget _inputField(String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)),
          suffixIcon: const Icon(Icons.star_outline_outlined,
              size: 18),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter value";
          }
          if (!validatePassword(value)) {
            return "Enter correct password";
          }
          return null;
        },
      ),
    );
  }
}
