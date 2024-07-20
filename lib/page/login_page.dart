import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key, this.onTap});

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(CupertinoIcons.chat_bubble_2_fill,
                size: 60, color: CupertinoColors.black,
            ),
            const Gap(10),
            Text("Welcome back, you're been missed!", style: GoogleFonts.poppins(
              color: CupertinoColors.black, fontSize: 16
            )),
            const Gap(10),
             MyTextField(
              controller: _emailController,
              hinText: "Email",
              obscureText: false,
            ),
            const Gap(5),
             MyTextField(
               controller: _passwordController,
              hinText: "Password",
              obscureText: true,
            ),
            const Gap(20),
            const MyButton(
              text: "Log in",
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?  ", style: GoogleFonts.rubik(
                  color: CupertinoColors.systemGrey, fontSize: 16
                )),
                GestureDetector(
                  onTap: onTap,
                  child: Text("Register now", style: GoogleFonts.rubik(
                      color: CupertinoColors.systemGrey, fontSize: 16,
                    fontWeight: FontWeight.bold
                  )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
