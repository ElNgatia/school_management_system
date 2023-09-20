import 'package:flutter/material.dart';
import 'package:school_management_system/core/auth_service.dart';
import 'package:school_management_system/views/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final AuthService authService;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    authService = AuthService(); // Initialize authService here
  }

  @override
  Widget build(BuildContext context) {
    redirect() async {
      await authService
          .signIn(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      )
          .then((value) {
        if (value == 'authenticated') {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AdminDashboard()));
        } else if (value == 'teacher') {
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => TeacherDashboard()));
        } else if (value == 'parent') {
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => ParentDashboard()));
        } else if (value == 'accountant') {
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => AccountantDashboard()));
        } else {
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => ErrorPage()));
        }
        print(value);
      });
    }

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: const Center(
                child: Text('Left content with dummy text for now'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Email Input
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  // Password Input
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true, // Hide the password
                  ),
                  const SizedBox(height: 32.0),
                  // Login Button
                  ElevatedButton(
                    onPressed: () async {
                      redirect();
                      // dispose();
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailController.clear();
    passwordController.clear();
    super.dispose();
  }
}
