import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:unibit/Presentation/Common/BottomNavBar.dart';
import 'package:unibit/Presentation/LoginPage/Signup.dart';

class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final _formfield = GlobalKey<FormState>();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formfield,
        child: Column(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .90,
            padding: const EdgeInsets.all(6),
            child: TextFormField(
              controller: mobileController,
              decoration: const InputDecoration(
                labelText: "Mobile Number",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.call_outlined,
                  color: Colors.black,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Field Can't be Empty";
                }
                bool mobileValid = RegExp(
                        r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                    .hasMatch(value);
                if (!mobileValid) {
                  return "Enter Valid Number";
                }
                return null;
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .90,
            padding: const EdgeInsets.all(6),
            child: TextFormField(
              controller: passwordController,
              obscureText: passwordToggle,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline, color: Colors.black),
                suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      passwordToggle = !passwordToggle;
                    });
                  },
                  child: Icon(
                      passwordToggle ? Icons.visibility : Icons.visibility_off),
                ),
                labelText: "Password",
                hintStyle: const TextStyle(color: Colors.grey),
                border: const OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Enter Password");
                } else if (passwordController.text.length < 8) {
                  return "Password should be more than 8 characters";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 139, 34, 100),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .90,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: const Color(0xffFFBE00)),
                onPressed: () {
                  if (_formfield.currentState!.validate() &&
                      mobileController.text == "9101999999" &&
                      passwordController.text == "Password123") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const BottomNavBar();
                    }));
                    Fluttertoast.showToast(
                        msg: 'Login Succesful',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 18.0);
                  } else {
                    Fluttertoast.showToast(
                        msg: "Please Enter Correct Credentials",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 18.0);
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .90,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor: const Color.fromARGB(255, 0, 76, 255)),
                onPressed: () {
                  Fluttertoast.showToast(
                      msg:
                          "An OTP has been send to your registered mobile number",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 18.0);
                },
                child: const Text(
                  'Login With OTP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
          ),
          const Expanded(child: Signup())
        ]),
      ),
    );
  }
}
