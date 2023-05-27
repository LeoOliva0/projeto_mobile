import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'CadastroPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  
  
  void _navegarParaLoginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void _navegarParaCadastroPage() {
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
      appBar: AppBar(
        backgroundColor: Color(0xff359f8a),
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(49 * fem, 121.5 * fem, 61.5 * fem, 163 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF131619),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 41.5 * fem),
              width: double.infinity,
              height: 57 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 48.5 * fem,
                    top: 11*fem,
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
                    left: 0,
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
              margin: EdgeInsets.fromLTRB(13.5 * fem, 0, 0, 191 * fem),
              child: Text(
                'Organize seus dias e sua vida!',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 17 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.26 * ffem / fem,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(37 * fem, 0, 27.5 * fem, 35 * fem),
              child: SizedBox(
                width: double.infinity,
                height: 50 * fem,
                child: ElevatedButton(
                  onPressed: _navegarParaCadastroPage,
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
            Padding(
              padding: EdgeInsets.fromLTRB(38 * fem, 0, 26.5 * fem, 0),
              child: SizedBox(
                width: double.infinity,
                height: 50 * fem,
                child: ElevatedButton(
                  onPressed: _navegarParaLoginPage,
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
          ],
        ),
      ),
    );
  }
}
