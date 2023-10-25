import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                icon: Icon(Icons.close_outlined),
                onPressed: () {
                },
              ),
              SizedBox(width: 8),
              Text('Войти'),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Имя пользователя, почту или номер телефона',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Пароль',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 55, 107, 57),
                ),
                child: Text('Войти'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(1, 34, 39, 43),
                ),
                child: Text('Создать Аккаунт'),
              ),
              SizedBox(height: 8),
              Text('или', style: TextStyle(fontSize: 16)),
              SizedBox(height: 16.0,),
              OutlinedButton.icon(
                onPressed: () {
                },
                style: OutlinedButton.styleFrom(
                  primary: Colors.red,
                  side: BorderSide(color: Colors.red),
                ),
                icon: Icon(Icons.login, color: Colors.red),
                label: Text('Войти с помощью Google'),
              ),
              SizedBox(height: 16.0),
              OutlinedButton.icon(
                onPressed: () {
                  
                },
                style: OutlinedButton.styleFrom(
                  primary: Color(0xFF2D42A0),
                  side: BorderSide(color: Color(0xFF2D42A0)),
                ),
                icon: Icon(Icons.login, color: Color(0xFF2D42A0)),
                label: Text('Войти с помощью BK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}