import 'package:flutter/material.dart';
import './WelcomePage.dart';

class ConfigurationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Configurações:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Redefinir Senha'),
            onTap: () {
              // Lógica para redefinir senha
            },
          ),
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text('Habilitar Modo Escuro'),
            onTap: () {
              // Lógica para habilitar o modo escuro
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Editar Nome'),
            onTap: () {
              // Lógica para editar o nome
            },
          ),
          Spacer(),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => WelcomePage()),
                );
              },
              child: Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }
}
