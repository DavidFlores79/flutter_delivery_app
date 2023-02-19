import 'package:delivery_app/colors/colors.dart';
import 'package:delivery_app/pages/pages.dart';
import 'package:delivery_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  static const String routeName = 'register';

  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => const backButton(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Registro',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        color: Color.fromRGBO(10, 31, 68, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const LoginInput(
                      hintText: 'Nombre',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                    ),
                    const LoginInput(
                      hintText: 'Teléfono',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                    ),
                    const LoginInput(
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                    ),
                    const LoginInput(
                      hintText: 'Contraseña',
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
                          backgroundColor: Colors.amber.shade800,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          'Registrarme',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Al hacer clic en registrarme aceptas los ',
                          style: TextStyle(
                            fontSize: 16,
                            color: grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Términos y Condiciones',
                            style: TextStyle(
                              fontSize: 16,
                              color: darkGrey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _mostrarAlerta(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        content: Container(
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/icons/signup.png'),
                height: 120,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Gracias por registrarte con nosotros, serás redirigido al Inicio ahora.',
                style: TextStyle(
                  fontSize: 16,
                  color: darkGrey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, Login.routeName),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    'Listo!',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
