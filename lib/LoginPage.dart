import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_mobile/HomePage.dart';
import 'utils.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double fem = MediaQuery.of(context).size.width / 375;
    final double ffem = fem * 0.97;

    void _navigateToHomePage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF359F8A),
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        color: Color(0xFF131619),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 16),
              width: double.infinity,
              height: 57 * fem,
              child: Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Positioned(
                      left: 27,
                      top: 6.5 * fem,
                      child: SizedBox(
                        width: 50 * fem,
                        height: 50 * fem,
                        child: Image.asset(
                          'assets/images/checkIcon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70 * fem,
                      top: 7 * fem,
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
                              height: 1.26 * ffem,
                              letterSpacing: 1.8 * fem,
                              color: Color(0xFF42BEA5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 82, 31, 132),
                color: Color(0xFF42BEA5),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 44),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email:',
                              style: TextStyle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.26 * ffem,
                                color: Color(0xFF1A1F24),
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.26 * ffem,
                                color: Color(0xFF9AFFFF),
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 17,
                                  horizontal: 15.56,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF359F8A)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor: Color(0xFF359F8A),
                                hintText: 'Seu Email...',
                                hintStyle: TextStyle(
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.26 * ffem,
                                  color: Color(0xFF9AFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 119),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Senha:',
                              style: TextStyle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.26 * ffem,
                                color: Color(0xFF1A1F24),
                              ),
                            ),
                            TextField(
                              style: TextStyle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2575 * ffem,
                                color: Color(0xFF9AFFFF),
                              ),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 16.5,
                                  horizontal: 15.56,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF359F8A)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor: Color(0xFF359F8A),
                                hintText: 'Insira sua senha aqui...',
                                hintStyle: TextStyle(
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575 * ffem,
                                  color: Color(0xFF9AFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(49, 0, 65, 0),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF1A1F24)),
                          color: Color(0xFF1A1F24),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ElevatedButton(
                          onPressed: _navigateToHomePage,
                          child: Text(
                            'LOGIN',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.26 * ffem,
                              letterSpacing: 0.64 * fem,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1A1F24),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
