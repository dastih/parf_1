import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  MyApp({super.key});
  String login = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login page',
        home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.black, title: Center( child: Text('Login page')),),
            body: Center(child: Column(children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Input Login',
                    ),
                    onChanged: (text) {
                      login = text;
                    },
                  )),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Input Password',
                    ),
                    onChanged: (text) {
                      password = text;
                    },
                  )),
              Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(login : login, password : password)));
                    },
                    child: const Text('Login'),
                  )
              ),],
            ),
            )));
  }
}

class Home extends StatelessWidget {
  String login;
  String password;
  Home({required this.login, required this.password});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Profile',
        home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.black, title: Center(child: Text('Profile'))),
            body: Center(child: Column(children: <Widget>[

              Padding(
                padding: EdgeInsets.fromLTRB(0, 250, 0, 15),
                  child: Text('Wellcome '+login,)

              ),
              Container(
                  child: Text('Your password: '+password,)
              ),
            ]
            )
            )
        )
    );
  }
}