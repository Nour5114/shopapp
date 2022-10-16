import 'dart:convert';
import 'package:flutter/material.dart';

import 'login_screen.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var mobileController = TextEditingController();
  var nameController = TextEditingController();
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
    Color primaryColor = Theme.of(context).primaryColor;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
          title: const Text(
            'Taqeem Teachers',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: formKey,
                  child: AutofillGroup(
                    child: Column(
                      children: [
                        const Text(
                          'تسجيل حساب جديد',
                          style: TextStyle(fontSize: 40),
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        TextFormField(
                          autofillHints: const <String>[AutofillHints.name],
                          cursorColor: primaryColor,
                          keyboardType: TextInputType.text,
                          controller: nameController,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'الرجاء ادخال الاسم';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'الاسم',
                            labelStyle: const TextStyle(fontSize: 20,color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            suffixIcon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          autofillHints: const <String>[AutofillHints.telephoneNumber],
                          cursorColor: primaryColor,
                          keyboardType: TextInputType.phone,
                          controller: mobileController,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'الرجاء ادخال رقم الموبايل';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'رقم الموبايل',
                            labelStyle: const TextStyle(fontSize: 20,color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                          cursorColor: primaryColor,
                          keyboardType: TextInputType.text,
                          controller: passController,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'الرجاء ادخال كلمه السر';
                            }
                            return null;
                          },
                          obscureText: isHiddenPassword,
                          decoration: InputDecoration(
                            labelText: 'كلمه السر',
                            labelStyle: const TextStyle(fontSize: 20,color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            suffixIcon: InkWell(
                              child: isHiddenPassword
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
                                  isHiddenPassword = !isHiddenPassword;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          cursorColor: primaryColor,
                          keyboardType: TextInputType.text,
                          controller: refillPassController,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'الرجاء ادخال كلمه السر';
                            }
                            return null;
                          },
                          obscureText: isHiddenRefillPassword,
                          decoration: InputDecoration(
                            labelText: 'تأكيد كلمه السر',
                            labelStyle: const TextStyle(fontSize: 20,color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: primaryColor),
                            ),
                            suffixIcon: InkWell(
                              child: isHiddenRefillPassword
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
                                  isHiddenRefillPassword = !isHiddenRefillPassword;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        InkWell(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                  //signup(context);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Please fill the field')));
                              }
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
                                'تسجيل',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              ' تمتلك حسابا؟',
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
                                        const LoginScreen()));
                              },
                              child: Text(
                                'تسجيل دخول',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20),
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
      ),
    );
  }



/*  Future<void> signup(context) async {
    //String? token = await FirebaseMessaging.instance.getToken();
    var response = await http.post(Uri.parse(signupURL),
        body: ({
          'name': nameController.text,
          'mobile': mobileController.text,
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
