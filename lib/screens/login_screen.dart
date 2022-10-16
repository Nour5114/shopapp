import 'package:flutter/material.dart';
import 'package:shop_app/screens/signup_screen.dart';


class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passController = TextEditingController();
  var mobileController = TextEditingController();
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
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: AutofillGroup(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'تسجيل الدخول',
                        style: TextStyle(fontSize: 40),
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      TextFormField(
                        autofillHints: const <String>[
                          AutofillHints.telephoneNumber
                        ],
                        cursorColor: primaryColor,
                        keyboardType: TextInputType.phone,
                        controller: mobileController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'الرجاء ادخال الموبايل';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'رقم الموبايل',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: primaryColor),
                          ),
                          suffixIcon: Icon(
                            Icons.phone,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        autofillHints: const <String>[AutofillHints.password],
                        cursorColor: primaryColor,
                        keyboardType: TextInputType.text,
                        controller: passController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'الرجاء ادخال كلمه السر';
                          }
                          return null;
                        },
                        obscureText: isHidden,
                        decoration: InputDecoration(
                          hintText: 'كلمه السر',
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
                        height: 60,
                      ),
                      InkWell(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                                //login(context);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Please fill the field')));
                            }
                            //login(context);
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: primaryColor),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: const Text(
                              'تسجيل الدخول',
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          )),
                      // OutlinedButton(
                      //     style: OutlinedButton.styleFrom(
                      //         backgroundColor: Colors.grey.shade200,
                      //         padding: const EdgeInsets.all(10) //<-- SEE HERE
                      //         ),
                      //     onPressed: () async {
                      //       await service.showScheduledNotification(
                      //         id: 0,
                      //         title: 'Notification Title',
                      //         body: 'Some body',
                      //         seconds: 4,
                      //       );
                      //     },
                      //     child: const Text(
                      //       'اظهار الاشعار',
                      //       style: TextStyle(fontSize: 20),
                      //     )),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'لا تمتلك حسابا حتي الان؟',
                            style: TextStyle(fontSize: 20),
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
                            child: Text(
                              'انشاء حساب جديد',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20),
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
          'mobile': mobileController.text,
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
