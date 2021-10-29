import 'package:flutter/material.dart';
import 'package:uas_190103155/home/home.dart';

class LoginApp extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        brightness: Brightness.dark,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                width: double.infinity,
                child: Image.network(
                  'https://udb.ac.id/themes/udb/assets/images/udb-header.png',
                  height: 90,
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Email / Username",
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: "Password",
                        suffixIcon: IconButton(
                          icon: _isObscure
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {}, child: Text('Lupa Password?'))),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Colors.teal,
                            onPrimary: Colors.white,
                          ),
                          child: Text('Login')),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Belum punya akun ?'),
                        TextButton(
                            onPressed: () {}, child: Text('Daftar disini'))
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text('UAS Pemrograman Mobile'),
                    Text('Bennedictus Andik Arditya - 190103155'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
