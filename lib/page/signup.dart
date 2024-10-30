import 'package:flutter/material.dart';
import 'package:transportx/page/home.dart';
import 'package:transportx/page/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo or Icon
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  child: Icon(
                    Icons.person_add,
                    size: 100,
                    color: Colors.blue[700],
                  ),
                ),
                const SizedBox(height: 40),

                // Display error message
                // Full Name TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    prefixIcon: Icon(Icons.person, color: Colors.blue[700]),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                  ),
                ),
                const SizedBox(height: 20),

                // Username TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.account_circle, color: Colors.blue[700]),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                  ),
                ),
                const SizedBox(height: 20),

                // Email TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email, color: Colors.blue[700]),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                  ),
                ),
                const SizedBox(height: 20),

                // Password TextField
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock, color: Colors.blue[700]),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                  ),
                ),
                const SizedBox(height: 20),

                // Confirm Password TextField
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    prefixIcon: Icon(Icons.lock, color: Colors.blue[700]),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                  ),
                ),
                const SizedBox(height: 30),

                // Sign Up Button
                ElevatedButton(
                  onPressed: (){},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
