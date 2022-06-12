import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: FormInput(),
    );
  }
}

class FormInput extends StatelessWidget {
  const FormInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextField(
          decoration:  InputDecoration(
              border: InputBorder.none,
              labelText: 'Email Address',
              hintText: 'test@mail.com',
              icon: FaIcon(
                FontAwesomeIcons.envelope,
                size: 22.0,
              )
          ),
        ),
        TextField(
          decoration:  InputDecoration(
              border: InputBorder.none,
              labelText: 'Password',
              icon: FaIcon(
                FontAwesomeIcons.lock,
                size: 22.0,
              )
          ),
          obscureText: true,
        ),
      ],
    );
  }
}