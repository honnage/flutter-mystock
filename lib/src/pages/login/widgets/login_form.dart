import 'package:flutter/material.dart';

class LoginFrom extends StatelessWidget {
  const LoginFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
