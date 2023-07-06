// TODO Implement this library.
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required Null Function() onSuccess}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng nhập'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Nhập email của bạn',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập email của bạn';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  hintText: 'Nhập mật khẩu của bạn',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập mật khẩu của bạn';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // TODO: Xác thực người dùng
                  }
                },
                child: Text('Đăng nhập'),
              ),
              SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  // TODO: Chuyển đến trang đăng ký
                },
                child: Text('Đăng ký tài khoản mới'),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Chuyển đến trang quên mật khẩu
                },
                child: Text('Quên mật khẩu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}