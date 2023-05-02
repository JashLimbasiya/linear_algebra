import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';
import 'package:linear_algebra/screens/home_screen.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _textcontroller = TextEditingController();
  final GlobalKey<FormState> _formfield = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Feedback"),
        body: Container(
          decoration: background(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              //elevation: 20,
              child: Form(
                key: _formfield,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    Image.asset(
                      'lib/assets/images/logo.png',
                      height: 200,
                      width: 200,
                      alignment: Alignment.center,
                    ),
                    const SizedBox(height: 20),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      margin: const EdgeInsets.all(5),
                      child: TextFormField(
                        controller: _namecontroller,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: 'Enter your name here',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Name';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      margin: const EdgeInsets.all(5),
                      child: TextFormField(
                        controller: _phonecontroller,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: 'Enter your phone here',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (String? value) {
                          bool phoneValid =
                              RegExp(r"(^[0-9]{10}$)").hasMatch(value!);
                          if (value.isEmpty) {
                            return "Enter Phone Number";
                          } else if (!phoneValid) {
                            return "Enter Valid Phone Number";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      margin: const EdgeInsets.all(5),
                      child: TextFormField(
                        controller: _emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'Enter your email here',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (String? value) {
                          bool emailValid = RegExp(r"""
^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""")
                              .hasMatch(value!);
                          if (value.isEmpty) {
                            return "Enter Email";
                          } else if (!emailValid) {
                            return "Enter Valid Email";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      color: Colors.white,
                      shadowColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      margin: const EdgeInsets.all(5),
                      child: TextFormField(
                        controller: _textcontroller,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: 'Enter your feedback here',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        maxLines: 5,
                        textInputAction: TextInputAction.done,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Feedback';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textbutton(
                          "Send",
                          () {
                            if (_formfield.currentState!.validate()) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            }
                          },
                        ),
                        const SizedBox(width: 20),
                        textbutton("Cancel", () => Navigator.pop(context)),
                      ],
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
