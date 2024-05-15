import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson36/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String errorMessage = "";
  // @override
  // void initState() {
  //   super.initState();
  //   print("Init ishladi: ${widget.index}");
  // }

  // @override
  // void didUpdateWidget(covariant LoginPage oldWidget) {
  //   super.didUpdateWidget(oldWidget);

  //   if (oldWidget.index == widget.index) {
  //     print("Widgetlar bir xil");
  //   } else {
  //     print("Widgetlar har xil");
  //   }
  // }

  @override
  void dispose() {
    // print("Dispose ishladi: ${widget.index}");
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                // hintText: "Email Address",
                prefixIcon: const Icon(Icons.email),
                // contentPadding: EdgeInsets.only(left: 20),
                // suffixIcon: Icon(Icons.email),
                // fillColor: Colors.amber,
                // filled: true,
                label: const Text(
                  "Email Address",
                ),
                errorText: errorMessage.isEmpty ? null : errorMessage,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                // hintText: "Email Address",
                prefixIcon: const Icon(Icons.password),
                // contentPadding: EdgeInsets.only(left: 20),
                // suffixIcon: Icon(Icons.email),
                // fillColor: Colors.amber,
                // filled: true,
                label: const Text(
                  "Password",
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();

                  if (email.isEmpty || password.isEmpty) {
                    errorMessage =
                        "Iltimos barcha kerakli bo'limlarni to'ldiring";
                    setState(() {});
                  } else if (!email.contains("@")) {
                    errorMessage = "Iltimos to'g'ri email kiriting";
                    setState(() {});
                  } else {
                    //

                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (ctx) {
                      return HomePage();
                    }));
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
