import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mystock/src/config/theme.dart' as custom_theme;

class LoginFrom extends StatefulWidget {
  const LoginFrom({Key? key}) : super(key: key);

  @override
  State<LoginFrom> createState() => _LoginFromState();
}

class _LoginFromState extends State<LoginFrom> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // usernameController?.dispose();
    // passwordController?.dispose();
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _buildForm(),
        _buildSubmitFormButtom(),
      ],
    );
  }

  Card _buildForm() => Card(
        margin: const EdgeInsets.only(bottom: 22, left: 22, right: 22),
        elevation: 2.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 58,
            left: 28,
            right: 28,
          ),
          child: FormInput(
            usernameController: usernameController,
            passwordController: passwordController,
          ),
        ),
      );

  Container _buildSubmitFormButtom() => Container(
        width: 220,
        height: 50,
        decoration: _boxDecoration(),
        // ignore: deprecated_member_use
        child: FlatButton(
          onPressed: () {
            print('usernameController: ${usernameController.text}'); // ignore: avoid_print
            print('passwordController: ${passwordController.text}'); // ignore: avoid_print
          },
          child: const Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );

  BoxDecoration _boxDecoration() {
    const gradientStart = custom_theme.Theme.gradientStart;
    const gradientEnd = custom_theme.Theme.gradientEnd;

    // ignore: prefer_function_declarations_over_variables
    final boxShadowItem = (Color color) => BoxShadow(
          color: color,
          offset: const Offset(1.0, 6.0),
          blurRadius: 20.0,
        );

    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      boxShadow: [
        boxShadowItem(gradientStart),
        boxShadowItem(gradientEnd),
      ],
      gradient: const LinearGradient(
        colors: [
          gradientEnd,
          gradientStart,
        ],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(1.0, 1.0),
        stops: [0.0, 1.0],
      ),
    );
  }
}

class FormInput extends StatefulWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const FormInput({
    Key? key,
    required this.usernameController,
    required this.passwordController,
  }) : super(key: key);

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  final _color = Colors.black54;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildUsername(),
        const Divider(
          height: 22,
          thickness: 1,
          indent: 13,
          endIndent: 13,
        ),
        _buildPassword(),
      ],
    );
  }

  TextStyle _textStyle() => TextStyle(
        fontWeight: FontWeight.w500,
        color: _color,
      );

  TextField _buildPassword() => TextField(
        controller: widget.passwordController,
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Password',
          labelStyle: _textStyle(),
          icon: FaIcon(
            FontAwesomeIcons.lock,
            size: 22.0,
            color: _color,
          ),
        ),
      );

  TextField _buildUsername() => TextField(
        controller: widget.usernameController,
        obscureText: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Email Address',
          hintText: 'test@gmail.com',
          labelStyle: _textStyle(),
          icon: FaIcon(
            FontAwesomeIcons.envelope,
            size: 22.0,
            color: _color,
          ),
        ),
      );
}
