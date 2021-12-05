import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "SunTusThs\nBatch Last",
                    style: GoogleFonts.montserrat(
                      fontSize: 35,
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Enter Your Email Address",
                          hintStyle: GoogleFonts.roboto(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          ),
                          labelStyle: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                          labelText: "Email Address",
                        ),
                        validator: (email) {
                          if (email.length < 10) {
                            return "Email Must be Above 10 character";
                          } else {
                            return "Required field";
                          }
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            labelText: "Password",
                            hintStyle: GoogleFonts.roboto(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                            ),
                            labelStyle: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                          validator: (password) {
                            if (password.isEmpty) {
                              return "Required field";
                            } else if (password.length < 6) {
                              return "Password length must be above 6 character";
                            } else {
                              return "Password is correct";
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: RaisedButton(
                          color: Color.fromRGBO(0, 255, 0, .5),
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: GoogleFonts.robotoMono(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
