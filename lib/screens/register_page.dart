import 'package:flutter/material.dart';

enum Gender { Male, Female, Other }

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String name = '';
  String phone = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  bool agreeTerms = true;
  Gender? gender = Gender.Male;

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
                  'Registrar-se',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.red,
                  ),
                ),
                const Text('Por favor, insira seus dados.'),
                SizedBox.fromSize(size: const Size(double.infinity, 25)),
                TextField(
                  keyboardType: TextInputType.name,
                  onChanged: (value) {
                    name = value;
                  },
                  autofocus: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Nome',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    phone = value;
                  },
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'Telefone',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'E-mail',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Senha',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    confirmPassword = value;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Confirmar Senha',
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: Gender.Male,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    const Text("Masculino"),
                    Radio(
                      value: Gender.Female,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    const Text("Feminino"),
                    Radio(
                      value: Gender.Other,
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    const Text("Outro"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Concordo com os termos de uso do app"),
                    Checkbox(
                      value: agreeTerms,
                      onChanged: (checked) {
                        setState(() {
                          agreeTerms = !agreeTerms;
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
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "CADASTRAR",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox.fromSize(size: const Size(double.infinity, 25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Já tem uma conta? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Logar",
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
