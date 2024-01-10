import 'package:flutter/material.dart';
import '../../../app/widgets/text_widget.dart';
import '../widget/register_form_ui.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.45,
          child: const DecoratedBox(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/auth/register_banner.jpg",
              ),
            ),
          )),
        ),
         const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: AppText(
                    isSelectableText: false,
                    strText: "Register your account",
                  ),
                ),
                const RegisterFormUI(),
      ],
    ));
  }
}
