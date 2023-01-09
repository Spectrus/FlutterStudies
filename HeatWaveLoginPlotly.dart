 import 'package:flutter/material.dart';
import 'package:plotly/plotly.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heatmap',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/heatmap': (context) => HeatmapPage(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heatwave Map'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login', style: TextStyle(fontSize: 24)),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (value) => _email = value,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (value) => _password = value,
              obscureText: true,
            ),
            SizedBox(height: 16),
            RaisedButton(
              child: Text('Login'),
              onPressed: () async {
                try {
                  final user = await _auth.signInWithEmailAndPassword(
                      email: _email, password: _password);
                  if (user != null) {
                    Navigator.pushReplacementNamed(context, '/heatmap');
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
       