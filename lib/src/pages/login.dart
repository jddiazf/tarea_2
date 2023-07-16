import 'package:flutter/material.dart';
import 'package:tarea_2/src/constantes/routes.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  void _login(BuildContext context) {
    String usuario = _usernameController.text;
    String contra = _passwordController.text;

    if (usuario == 'jddiazf@unah.hn' && contra == '20172030688') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Inicio de sesión exitoso'),
            actions: [
              TextButton(
                child: const Text('Aceptar'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, MyRoutes.welcome.name);
                },
              ),
            ],
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Usuario y contraseña incorrecto. Inténtalo de nuevo.'),
          duration: Duration(seconds: 6),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 200,
              child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/2353/2353441.png'),
            ),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Usuario'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _login(context),
              child: Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
