import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import './utils.dart';
import 'package:projeto_mobile/WelcomePage.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff359f8a),
        title: Text('Cadastro'),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff131619),
        ),
        child: SingleChildScrollView(
          // Adicionado SingleChildScrollView
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                    46 * fem, 0 * fem, 64.5 * fem, 36.5 * fem),
                width: double.infinity,
                height: 57 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 48.5 * fem,
                      top: 10* fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 216 * fem,
                            height: 57 * fem,
                            child: Text(
                              'YOURTASKS',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Outfit',
                                fontSize: 36 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.26 * ffem / fem,
                                letterSpacing: 1.8 * fem,
                                color: Color(0xff42bea5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0 * fem,
                      top: 6.5 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 50 * fem,
                          height: 50 * fem,
                          child: Image.asset(
                            'assets/images/checkIcon.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(28 * fem, 100 * fem, 31 * fem,
                    300 * fem), // Reduzido o valor do padding inferior
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff42bea5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nome:',
                      style: SafeGoogleFont(
                        'Outfit',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.26 * ffem / fem,
                        color: Color(0xff1a1f24),
                      ),
                    ),
                    SizedBox(height: 8.5 * fem),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff359f8a),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff359f8a)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        hintText: 'Digite seu nome',
                        hintStyle: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.26 * ffem / fem,
                          color: Color(0xff9affff),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.26 * ffem / fem,
                        color: Color(0xff9affff),
                      ),
                    ),
                    SizedBox(height: 10 * fem),
                    Text(
                      'Email:',
                      style: SafeGoogleFont(
                        'Outfit',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.26 * ffem / fem,
                        color: Color(0xff1a1f24),
                      ),
                    ),
                    SizedBox(height: 10 * fem),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff359f8a),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff359f8a)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        hintText: 'Digite seu email',
                        hintStyle: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.26 * ffem / fem,
                          color: Color(0xff9affff),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.26 * ffem / fem,
                        color: Color(0xff9affff),
                      ),
                    ),
                    SizedBox(height: 10 * fem),
                    Text(
                      'Senha:',
                      style: SafeGoogleFont(
                        'Outfit',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.26 * ffem / fem,
                        color: Color(0xff1a1f24),
                      ),
                    ),
                    SizedBox(height: 10 * fem),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff359f8a),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff359f8a)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        hintText: 'Digite sua senha',
                        hintStyle: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575 * ffem / fem,
                          color: Color(0xff9affff),
                        ),
                      ),
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575 * ffem / fem,
                        color: Color(0xff9affff),
                      ),
                    ),
                    SizedBox(height: 20 * fem), // Espaço reduzido
                    ElevatedButton(
                      onPressed: () {
                        // Navegar para a tela de boas-vindas e exibir uma mensagem
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1a1f24),
                        
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8 * fem),
                        ),
                        minimumSize: Size(double.infinity, 50 * fem),
                      ),
                      child: Text(
                        'CRIAR CONTA',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Outfit',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.26 * ffem / fem,
                          letterSpacing: 0.64 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
