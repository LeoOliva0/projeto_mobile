import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_mobile/HomePage.dart';
import 'utils.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    void _navegarParaHomePage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff359f8a),
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 728 * fem,
          padding: EdgeInsets.fromLTRB(0 * fem, 53.5 * fem, 0 * fem, 0 * fem),
          color: Color(0xff131619),
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
                      top: 10 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 216 * fem,
                            height: 57 * fem,
                            child: Text(
                              'YOURTASKS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35 * ffem,
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
                padding: EdgeInsets.fromLTRB(
                    30 * fem, 82 * fem, 31 * fem, 132 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff42bea5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 44 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 7 * fem),
                            child: Text(
                              'Email:',
                              style: TextStyle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.26 * ffem / fem,
                                color: Color(0xff1a1f24),
                              ),
                            ),
                          ),
                          TextField(
                            style: TextStyle(
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.26 * ffem / fem,
                              color: Color(0xff9affff),
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  15.56 * fem, 17 * fem, 15.56 * fem, 16 * fem),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff359f8a)),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              filled: true,
                              fillColor: Color(0xff359f8a),
                              hintText: 'Seu Email...',
                              hintStyle: TextStyle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.26 * ffem / fem,
                                color: Color(0xff9affff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 119 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 5 * fem),
                            child: Text(
                              'Senha:',
                              style: TextStyle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.26 * ffem / fem,
                                color: Color(0xff1a1f24),
                              ),
                            ),
                          ),
                          TextField(
                            style: TextStyle(
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2575 * ffem / fem,
                              color: Color(0xff9affff),
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(15.56 * fem,
                                  16.5 * fem, 15.56 * fem, 16.5 * fem),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff359f8a)),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              filled: true,
                              fillColor: Color(0xff359f8a),
                              hintText: 'Insira sua senha aqui...',
                              hintStyle: TextStyle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem / fem,
                                color: Color(0xff9affff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          49 * fem, 0 * fem, 65 * fem, 0 * fem),
                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff1a1f24)),
                        color: Color(0xff1a1f24),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: ElevatedButton(
                        onPressed: _navegarParaHomePage, 
                          // Ação do botão de login
                      
                        child: Text(
                          'LOGIN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.26 * ffem / fem,
                            letterSpacing: 0.64 * fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff1a1f24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8 * fem),
                          ),
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
