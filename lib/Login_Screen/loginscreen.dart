import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import '../home/home_page.dart';
import 'login2.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Image(
                          height: 100,
                          width: 100,
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Restaurant Owner Sign in",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              "Want To Login As Admin?",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                color: Color.fromARGB(255, 135, 132, 132),
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Login Here",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 15,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 15,
                        ),
                        suffixIcon: Icon(
                          Icons.lock,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Icon(Icons.check_box_outline_blank_outlined),
                    SizedBox(width: 2.0),
                    Text("Remember me"),
                    SizedBox(width: 100),
                    Text("Forgot Password?"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                        /*bool yy = true;
                        if (yy == true) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              elevation: 8.0,
                              behavior: SnackBarBehavior.floating,
                              dismissDirection: DismissDirection.endToStart,
                              duration: const Duration(
                                seconds: 3,
                              ),
                              backgroundColor: Colors.green,
                              content: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Text(
                                    'LOADING ............',
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }*/
                        // _onClick();
                      },
                      child: Container(
                        height: 35,
                        //width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.deepOrange,
                        ),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen2(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "Login as Restaurant Employee?",
                            style: TextStyle(
                              color: Color.fromARGB(135, 21, 18, 18),
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "Login Here",
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    /*const CircularProgressIndicator(
                      semanticsLabel: 'signing in please wait...',
                      semanticsValue: '50',
                      strokeWidth: 2.0,
                      color: Colors.orange,
                    ),*/
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

//void _onClick() {}
