import 'package:delivery_app/colors/colors.dart';
import 'package:delivery_app/pages/pages.dart';
import 'package:delivery_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static const String routeName = 'forgot-password';

  const ForgotPassword({super.key});

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
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Olvidaste tu Contraseña?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromRGBO(10, 31, 68, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Escribe el email. Recibirás un link con las instrucciones para resetear la contraseña.',
                    style: TextStyle(
                      fontSize: 16,
                      color: grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const LoginInput(
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350.0,
                    height: 45.0,
                    child: ElevatedButton(
                      onPressed: () => _mostrarAlerta(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Enviarme correo',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
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
                image: AssetImage('assets/icons/unlock.png'),
                height: 120,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'En breve recibirás un email con un codigo para ingresar un nuevo password.',
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
