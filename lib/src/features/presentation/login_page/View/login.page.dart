// import 'dart:ui';
import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/pages.dart';
import 'package:delivery_app/src/features/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/brand/login.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                const backButton(
                  color: Colors.white,
                ),
              ],
            ),
            Transform.translate(
              offset: const Offset(0.0, -40.0),
              child: Container(
                width: double.infinity,
                height: 440,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      children: [
                        const Text(
                          'Bienvenido',
                          style: TextStyle(
                              fontSize: 35,
                              color: darkGrey,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Inicia sesión con tu cuenta',
                          style: TextStyle(
                            fontSize: 16,
                            color: grey,
                          ),
                        ),
                        const LoginInput(
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                        ),
                        const LoginInput(
                          hintText: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 350.0,
                          height: 45.0,
                          child: ElevatedButton(
                            onPressed: () => Navigator.pushReplacementNamed(
                                context, Home.routeName),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: darkOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: const Text(
                              'Iniciar Sesión',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, ForgotPassword.routeName),
                          child: const Text(
                            'Olvidaste tu contraseña?',
                            style: TextStyle(
                              fontSize: 16,
                              color: grey,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'No tienes cuenta?',
                              style: TextStyle(
                                fontSize: 16,
                                color: grey,
                              ),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, Register.routeName),
                              child: const Text(
                                'Regístrate',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: grey,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
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
