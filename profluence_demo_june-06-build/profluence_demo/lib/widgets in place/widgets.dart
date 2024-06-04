import 'package:flutter/material.dart';

Image logo(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}


TextField repTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    cursorColor: Colors.white,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    style: TextStyle(color: Colors.white.withOpacity(0.6)),
    decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.white54,
        ),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none))),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}


//Use this button for Sign in or Sign Up.
Container signInSignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.black12;
            }
            return Colors.white;
          }),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
      child: Text(
        isLogin ? 'Log In' : 'Sign Up',
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
  );
}

Row signUpDescription() {
  return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text("New to Profluence?",
        style: TextStyle(color: Colors.white, fontSize: 16)),
  ]);
}

Wrap signUpBlurb() {
  return const Wrap(children: [
    Text("Joining ProFluence takes a few steps to create your account.",
        style: TextStyle(color: Colors.white, fontSize: 24)),
  ]);
}

//Use Wrap widget to prevent overflowing text outside the border/bezel zone.
