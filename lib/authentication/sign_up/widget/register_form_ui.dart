import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_my_network_app/app/widgets/custom_text_field.dart';

class RegisterFormUI extends StatelessWidget {
  const RegisterFormUI({super.key});

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<FormState>();
    final TextEditingController username = TextEditingController();
    final TextEditingController email = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
         key: key,
        child: Column(
          children: [
            CustomTextField(
              controller: username,
              labelText: "Username",
              hintText: "Enter username",
              onValidate: (value) {
                if (value!.isEmpty) {
                  return "Username is required";
                }
                return "";
              },
              prefixIconData: Icons.person,
            ),
            const Gap(10 * 2),
            CustomTextField(
              controller: email,
              labelText: "Email",
              hintText: "Enter email",
              onValidate: (value) {
                if (value!.isEmpty) {
                  return "Email is required";
                }
                return "";
              },
              prefixIconData: Icons.email,
            ),
            const Gap(10 * 2),
            SizedBox( 
     height:40, //height of button
     width: double.infinity, //width of button
     child: ElevatedButton(
      
              onPressed: () {
                // BlocProvider.of<SignInBloc>(context).add(
                //   SignInUserEvent(
                //     username: username.text,
                //     email: email.text,
                //   ),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 27, 122, 201),
                textStyle: const TextStyle(
                  
                fontWeight: FontWeight.bold)
              ),
              child: const Text(
                "REGISTER",style: TextStyle(color: Colors.white),
              ),
            ),
            ),
          ],
        ),
      )
    );
  }
}