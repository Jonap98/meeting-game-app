import 'package:flutter/material.dart';
import 'package:meeting_game_app/src/ui/widgets/customElevatedButton.dart';

import '../widgets/customTextFormField.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userCtrl = TextEditingController();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue.withOpacity(0.5)),
        child: ListView(
          children: [
            const SizedBox(height: 100),
            const Image(
              image: AssetImage('assets/CardsLogo.png'),
              width: 150,
              height: 200,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Form(
                // key: formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      userCtrl: userCtrl,
                      hint: 'Ingresar usuario',
                      icon: Icons.mail,
                      label: 'Usuario',
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      userCtrl: userCtrl,
                      hint: 'Ingresar contraseña',
                      icon: Icons.mail,
                      label: 'Contraseña',
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const Center(
                            child: Text(
                              'Selecciona tu avatar',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {},
                            child: const Icon(Icons.color_lens),
                          ),
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {},
                            child: const Icon(Icons.laptop_windows),
                          ),
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {},
                            child: const Icon(Icons.phone_android),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomElevatedButton(
                        text: 'Ingresar',
                        onPressed: () {
                          Navigator.pushNamed(context, 'login_screen');

                          // if (!formKey.currentState!.validate()) return;

                          // AuthBloc().register(context, userCtrl.text);
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
