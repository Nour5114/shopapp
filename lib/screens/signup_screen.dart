import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var passController = TextEditingController();
  var refillPassController = TextEditingController();
  bool isHiddenPassword = true;
  bool isHiddenRefillPassword = true;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Enter your credentials to continue',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      const Text(
                        'Username',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        cursorColor: const Color(0xFF53B175),
                        keyboardType: TextInputType.text,
                        controller: usernameController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'please enter username';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF53B175)),
                          ),
                          suffixIcon: Icon(
                            Icons.person,
                            color: Color(0xFF53B175),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      TextFormField(
                        cursorColor: const Color(0xFF53B175),
                        keyboardType: TextInputType.phone,
                        controller: emailController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'please enter email';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF53B175)),
                          ),
                          suffixIcon: Icon(
                            Icons.email,
                            color: Color(0xFF53B175),
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
                        cursorColor: const Color(0xFF53B175),
                        keyboardType: TextInputType.text,
                        controller: passController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'please enter password';
                          }
                          return null;
                        },
                        obscureText: isHiddenPassword,
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
                            child: isHiddenPassword
                                ? const Icon(
                                    Icons.visibility,
                                    color: Color(0xFF53B175),
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: Color(0xFF53B175),
                                  ),
                            onTap: () {
                              setState(() {
                                isHiddenPassword = !isHiddenPassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      const Text(
                        'By continuing you agree to our Terms of Service and Privacy Policy.',
                        style: TextStyle(
                            color: Colors.grey,),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              //signup(context);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Please fill the field')));
                            }
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
                            'Sing Up',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            ' Already have an account?',
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
                                          const LoginScreen()));
                            },
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                  color: Color(0xFF53B175), fontSize: 20),
                            ),
                          )
                        ],
                      ),
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

/*  Future<void> signup(context) async {
    //String? token = await FirebaseMessaging.instance.getToken();
    var response = await http.post(Uri.parse(signupURL),
        body: ({
          'name': usernameController.text,
          'mobile': emailController.text,
          'password': passController.text,
          'birthdate' : birthdateInput.text,
          'city_id' : selectedCityId
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
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid Credentials')));
    }
  }

  setData(key, value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(key, value);
  }*/
}
