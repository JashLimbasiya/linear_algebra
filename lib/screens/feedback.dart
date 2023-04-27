import 'package:flutter/material.dart';
import 'package:linear_algebra/screens/home_screen.dart';

class FeedbackScreen extends StatefulWidget{
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
        appBar: AppBar(
          toolbarHeight: 75,
          shadowColor: Colors.red,
          backgroundColor: Colors.red,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Feedback",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
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
                          bool phoneValid = RegExp(
                              r"(^[0-9]{10}$)")
                              .hasMatch(value!);
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
                          bool emailValid = RegExp(
                              r"""
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
                        Card(
                          color: Colors.red,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10,
                          margin: const EdgeInsets.all(10),
                          child: TextButton(
                            child: const Text(
                              'Send',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              if (_formfield.currentState!.validate()) {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) => const HomeScreen()));
                              }
                            },
                          ),
                        ),
                        Card(
                          color: Colors.red,
                          shadowColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10,
                          margin: const EdgeInsets.all(10),
                          child: TextButton(
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
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