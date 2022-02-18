import 'package:exam/core/components/container_comp.dart';
import 'package:exam/core/components/sizeconfig.dart';
import 'package:exam/core/components/text_bold.dart';
import 'package:exam/core/constants/constants.dart';
import 'package:exam/data/user_info.dart';
import 'package:exam/models/user_login_model.dart';
import 'package:exam/widgets/scaffold_messanger.dart';
import 'package:flutter/material.dart';
import 'package:exam/core/components/input_comp.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _textHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
                padding: PaddingConst.mediumPadding,
                child: Column(
                  children: [
                    Row(children: const [
                      Icon(
                        Icons.arrow_left,
                        color: Colors.black,
                      ),
                    ]),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(children: [
                      TextBold.myBoldText(text: "Log in"),
                    ]),
                    const SizedBox(
                      height: 31,
                    ),
                    Container(
                      child: Row(
                        children: [
                          MyContainer.container(Colors.white,
                              'assets/images/google.png', "Google"),
                          SizedBox(
                            width: 20,
                          ),
                          MyContainer.container(Colors.blue,
                              'assets/images/Facebook.png', "Facebook"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 37),
                    Text('Or log in using'),
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: _controller,
                            decoration: InputComp.inputDecoration(
                              hintText: 'Enter mail...',
                              labelText: 'Mail',
                            ),
                            validator: (text) {
                              if (text!.length < 5) {
                                return " Username 5 ta belgidan kam bo'lmasin";
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputComp.inputDecoration(
                              hintText: 'Enter password...',
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye),
                                onPressed: () {
                                  _textHide = !_textHide;
                                  setState(() {});
                                },
                              ),
                            ),
                            obscureText: _textHide,
                            validator: (text) {
                              if (text!.length < 5) {
                                return "Password 5 ta belgidan kam bo'lmasin";
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, left: 200, bottom: 32),
                      child: const Center(
                        child: Text('Forgot your password?'),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: ColorsConst.eColor,
                        fixedSize: const Size(325, 50),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          for (UserLogInModel username in UserInfo.usersInfo) {
                            if (username.userEmail == _controller.text &&
                                _passwordController.text == username.password) {
                              print(username.password);
                              Navigator.pushReplacementNamed(context, '/signUp',
                                  arguments: _controller.text);
                            }
                          }
                          MyMessanger.showMyMessenger(
                              'You mail or password you entered is wrong !',
                              context);
                        }
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: FontsConst.mediumFont,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:180),
                      child: Row(
                        children: [
                          SizedBox(
                            width: getWidth(80),
                          ),
                          const Text("Don't have an account?"),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/signUp',
                                );
                              },
                              child: const Text('Sign up'),)
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }

  signIn(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      for (UserLogInModel username in UserInfo.usersInfo) {
        if (username.userEmail == _controller.text &&
            _passwordController.text == username.password) {
          print(username.password);
          Navigator.pushReplacementNamed(context, '/signUp',
              arguments: _controller.text);
        }
      }
      MyMessanger.showMyMessenger(
          'You mail or password you entered is wrong !', context);
    }
  }
}
