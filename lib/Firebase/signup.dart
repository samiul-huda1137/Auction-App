import 'package:auction_app/Firebase/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0))),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                MyDB db = MyDB();
                db.signup(_emailController, _passwordController);
              },
              child: Text('Sign Up'))
        ],
      ),
    );
  }
}
