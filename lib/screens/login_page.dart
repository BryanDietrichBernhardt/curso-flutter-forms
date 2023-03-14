import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  bool savePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.red,
                  ),
                ),
                const Text('Por favor, insira seus dados.'),
                SizedBox.fromSize(size: const Size(double.infinity, 25)),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    if (RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      email = value;
                      print(email);
                    }
                  },
                  autofocus: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'E-mail',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    password = value;
                    print(password);
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Lembrar senha?"),
                    Checkbox(
                      value: savePassword,
                      onChanged: (checked) {
                        setState(() {
                          savePassword = !savePassword;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox.fromSize(size: const Size(double.infinity, 25)),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: const Size(
                        double.infinity,
                        50,
                      ),
                    ),
                    onPressed: () {
                      print("Email: $email");
                      print("Senha: $password");
                      print("Lembrar senha: $savePassword");
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(size: const Size(double.infinity, 25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Não tem uma conta? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: const Text(
                        "Cadastrar-se",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
