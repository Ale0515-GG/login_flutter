import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicia sesiomn',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 218, 239), // Color morado pastel
        appBar: AppBar(
          title: const Text('Inicia sesion'),
          backgroundColor: const Color.fromARGB(255, 255, 182, 193), // Color rosa pastel
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 173, 216, 230), // Color azul pastel
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                //controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                //controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _signInWithEmailAndPassword,
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 173, 216, 230), // Color azul pastel
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false, // Quitar el banner de depuración
    );
  }

  // Placeholder function for sign-in with email and password
  void _signInWithEmailAndPassword() {
    // Implement your sign-in logic here
  }
}
