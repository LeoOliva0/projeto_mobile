import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'CadastroPage.dart';

class WelcomePage extends StatelessWidget {
  void _navegarParaLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void _navegarParaCadastroPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CadastroPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double fem = MediaQuery.of(context).size.width / 375;
    final double ffem = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25 * fem),
        width: double.infinity,
        color: Color(0xFF131619),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 24 * fem),
              width: double.infinity,
              height: 57 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 80 * fem,
                    top: 11 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 216 * fem,
                          height: 57 * fem,
                          child: Text(
                            'YOURTASKS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Outfit',
                              fontSize: 38 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.26 * ffem / fem,
                              letterSpacing: 1.8 * fem,
                              color: Color(0xFF42BEA5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 28,
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
            Text(
              'Organize seus dias e sua vida!',
              style: TextStyle(
                fontFamily: 'Outfit',
                fontSize: 17 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.26 * ffem / fem,
                color: Color(0xFFFFFFFF),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16 * fem),
              child: SizedBox(
                width: double.infinity,
                height: 50 * fem,
                child: ElevatedButton(
                  onPressed: () => _navegarParaCadastroPage(context),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    backgroundColor: Color(0xFF42BEA5),
                    elevation: 2 * fem,
                    textStyle: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.26 * ffem / fem,
                      letterSpacing: 0.64 * fem,
                    ),
                  ),
                  child: Text('CADASTRO'),
                ),
              ),
            ),
            SizedBox(height: 16 * fem),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16 * fem),
              child: SizedBox(
                width: double.infinity,
                height: 50 * fem,
                child: ElevatedButton(
                  onPressed: () => _navegarParaLoginPage(context),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    backgroundColor: Color(0xFF42BEA5),
                    textStyle: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.26 * ffem / fem,
                      letterSpacing: 0.64 * fem,
                    ),
                  ),
                  child: Text('LOGIN'),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
