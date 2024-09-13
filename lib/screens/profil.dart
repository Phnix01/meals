import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'; // Assure-toi que url_launcher est bien importé
import 'package:url_launcher/url_launcher_string.dart'; // Pour utiliser launchUrlString

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  // Fonction pour ouvrir WhatsApp
  Future<void> _openWhatsApp() async {
    const whatsappUrl =
        'https://wa.me/+22796744627'; // Remplace par ton numéro WhatsApp

    if (await canLaunchUrlString(whatsappUrl)) {
      await launchUrlString(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Impossible d\'ouvrir WhatsApp';
    }
  }

  // Fonction pour ouvrir LinkedIn
  Future<void> _openLinkedIn() async {
    const linkedInUrl =
        'https://www.linkedin.com/in/omar-farouk-sani-gigo-85b8a9183?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app';

    if (await canLaunchUrlString(linkedInUrl)) {
      await launchUrlString(linkedInUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Impossible d\'ouvrir LinkedIn';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primaryContainer,
            Colors.black87,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.3,
                  backgroundImage: AssetImage('assets/images/img.jpg'),
                  backgroundColor: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Software Engineer & AlphaSoft CEO',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nerkoOne(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black38.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white30, width: 1.0),
                  ),
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Entrepreneur et développeur web/mobile.\nAyant participé à l\'élaboration de plusieurs projets de grande envergure.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nerkoOne(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialButton(
                      icon: FontAwesomeIcons.whatsapp,
                      text: 'WhatsApp',
                      onPressed: _openWhatsApp,
                    ),
                    SocialButton(
                      icon: FontAwesomeIcons.linkedin,
                      text: 'LinkedIn',
                      onPressed: _openLinkedIn,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const SocialButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: FaIcon(icon, color: Colors.white, size: 24),
      label: Text(
        text,
        style: GoogleFonts.nerkoOne(fontSize: 16),
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black45,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 10,
      ),
    );
  }
}
