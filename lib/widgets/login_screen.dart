import 'package:flutter/material.dart';
import './sign_up_screen.dart';
import './password_reset_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBtnStyle = FilledButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.blue.shade200,
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    final signUpBtnStyle = FilledButton.styleFrom(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.green.shade200,
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    final resetPwdBtnStyle = FilledButton.styleFrom(
      backgroundColor: Colors.grey,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.grey.shade200,
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Google_Workspace_product_icons_%282020%29.svg/1024px-Google_Workspace_product_icons_%282020%29.svg.png',
              width: 200,
              height: 50,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 50),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            FilledButton(
              style: loginBtnStyle,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return const AlertDialog(
                      title: Text('Message'),
                      content: Text('Need to implement'),
                    );
                  },
                );
              },
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    style: signUpBtnStyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text('Sign Up'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    style: resetPwdBtnStyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PasswordResetScreen(),
                        ),
                      );
                    },
                    child: const Text('Reset Password'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
