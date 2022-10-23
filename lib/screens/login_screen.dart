import 'package:flutter/material.dart';
import 'package:shop_app/screens/signup_screen.dart';

import 'home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passController = TextEditingController();
  var emailController = TextEditingController();
  bool isHidden = true;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = const Color(0xFF53B175);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: AutofillGroup(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/loginlogo.png',
                            width: 55,
                            height: 60,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Enter your emails and password',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        autofillHints: const <String>[AutofillHints.email],
                        cursorColor: primaryColor,
                        keyboardType: TextInputType.text,
                        controller: emailController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'please enter email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF53B175)),
                          ),
                          suffixIcon: Icon(
                            Icons.email,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        autofillHints: const <String>[AutofillHints.password],
                        cursorColor: primaryColor,
                        keyboardType: TextInputType.text,
                        controller: passController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'please enter password';
                          }
                          return null;
                        },
                        obscureText: isHidden,
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF53B175)),
                          ),
                          suffixIcon: InkWell(
                            child: isHidden
                                ? Icon(
                                    Icons.visibility,
                                    color: primaryColor,
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: primaryColor,
                                  ),
                            onTap: () {
                              setState(() {
                                isHidden = !isHidden;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                            /* if (formKey.currentState!.validate()) {
                              //login(context);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Please fill the field')));
                            }*/
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            backgroundColor: const Color(0xFF53B175),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            textStyle: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don’t have an account?',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen()));
                            },
                            child: const Text(
                              'Sing up',
                              style: TextStyle(
                                  color: Color(0xFF53B175), fontSize: 18),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
/*
  Future<void> login(context) async {
    //String? token = await FirebaseMessaging.instance.getToken();
    SharedPreferences pref = await SharedPreferences.getInstance();
    var response = await http.post(Uri.parse(loginURL),
        body: ({
          'mobile': emailController.text,
          'password': passController.text,
          //'device_token': token,
        }));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      if (result['status'] == 'error') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result['message'])));
      } else {
        setData('token', result['token'].toString());
        final globalModel = Provider.of<UserProvider>(context, listen: false);
        globalModel.setData('User',result['teacher']);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Invalid Credentials')));
    }
  }

  setData(key, value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(key, value);
  }*/
}
