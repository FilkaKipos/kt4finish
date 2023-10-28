import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData (scaffoldBackgroundColor: Color(0xFF262B30),
      textTheme: TextTheme(
          bodyMedium: TextStyle(color:Color.fromARGB(255, 255, 255, 255)),
        ),),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF262B30),
          title: Row(
            children: [
              IconButton(
                style: ButtonStyle(
              textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(color: const Color.fromARGB(255, 255, 255, 255)))),
                icon: Icon(Icons.close_outlined),
                onPressed: () {
                },
                
              ),
              SizedBox(width: 8),
              Text('Войти')
              ,
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: kToolbarHeight), // Добавлено для отступа под AppBar
              TextField(
                decoration: InputDecoration(
                  labelText: 'Имя пользователя, почту или номер телефона',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Пароль',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 55, 107, 57),
                  
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                ),
                child: Text('Войти'),
              ),
              SizedBox(height: 16.0,),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 45, 50, 54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                ),
                child: Text('Создать Аккаунт'),
              ),
              SizedBox(height: 8),
              Text('или',textAlign: TextAlign.center , style: TextStyle(fontSize: 16)),
              SizedBox(height: 16.0,),
              OutlinedButton.icon(
                onPressed: () {
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  backgroundColor: Colors.red,
                  side: BorderSide(color: Colors.red),
                ),
                
                icon: Icon(Icons.login, color: const Color.fromARGB(255, 255, 255, 255)),
                label: Text('Войти с помощью Google'),
              ),
              SizedBox(height: 16.0),
              OutlinedButton.icon(
                onPressed: () {
                  
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  backgroundColor: Color(0xFF2D42A0),
                  side: BorderSide(color: Color(0xFF2D42A0)),
                ),
                icon: Icon(Icons.login, color: Color.fromARGB(255, 255, 255, 255)),
                label: Text('Войти с помощью BK')
                
                ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}