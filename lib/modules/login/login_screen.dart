import 'package:flutter/material.dart';
import 'package:test_app/shared/components/components.dart';
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text('Login',
                    style: TextStyle(fontSize: 30.0,
                    fontWeight: FontWeight.bold),

                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  regularTextFormField(
                      controller: emailController,
                      text: "Email Address",
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if(value.isEmpty) {
                          return "Enter an email";
                        }
                        return null;
                      },
                  ),

                SizedBox(
                  height: 40.0,
                ),

                  regularTextFormField(
                    controller: passwordController,
                    text: "password",
                    icon: Icons.lock,
                    keyboardType: TextInputType.visiblePassword,
                    isPassword: hidePassword,
                    validator: (value) {
                      if(value.isEmpty) {
                        return "Enter a password";
                      }
                      return null;
                    },
                    suffix:hidePassword? Icons.visibility : Icons.visibility_off,
                    suffixPress: (){
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),

                  SizedBox(
                  height: 40.0,
                ),
                regularButton(function: (){
                  print(emailController.text);
                  print(passwordController.text);
                },
                    text: "login"
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                [
                  Text('Don\'t have an account'
                  ),
                  TextButton(onPressed: (){},
                      child: Text('Register now'
                      ),
                    ),
                ],)
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
