import 'package:flutter/material.dart';
import 'package:meals/screens/tabs.dart';

class FormOne extends StatefulWidget {
  const FormOne({super.key});

  @override
  _FormOneState createState() => _FormOneState();
}

class _FormOneState extends State<FormOne> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  String? errorMessage;

  void _valider() {
    String controller1 = _controller1.text;
    String controller2 = _controller2.text;

    setState(() {
      errorMessage = null; // Réinitialiser le message d'erreur
    });

    if (controller1.isEmpty || controller2.isEmpty) {
      setState(() {
        errorMessage = 'Veuillez remplir tous les champs';
      });
      return;
    } else {
      if (controller1 == "Phnix01" && controller2 == "fomar9235@gmail.com") {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => TabsScreen()));
      } else {
        setState(() {
          errorMessage = 'Pseudo ou email incorrect. Veuillez réessayer.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlueAccent.shade100,
            const Color.fromARGB(255, 33, 34, 33),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Bienvenue !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Connectez-vous pour accéder à vos plats préférés.',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 50),
              Icon(
                Icons.verified_user_rounded,
                color: Colors.white70,
                size: 150,
              ),
              const SizedBox(height: 20),
              Container(
                width: 300,
                child: TextField(
                  controller: _controller1,
                  maxLength: 25,
                  decoration: InputDecoration(
                    labelText: "Pseudo",
                    labelStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 300,
                child: TextField(
                  controller: _controller2,
                  maxLength: 50,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              if (errorMessage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    errorMessage!,
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 14,
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: _valider,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Valider'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
