import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 16.0,
              ),
              Text(
                'YOURTASKS',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                'Don\'t have an account?',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.pink,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}