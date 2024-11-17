import 'package:flutter/material.dart';

class BerandaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SARI DEWI CATERING',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Sejak tahun ..... setia membersamai masyarakat ..... '
                    'dan sekitarnya dalam merayakan momen-momen spesial. '
                    'Sari Dewi Catering senantiasa menyajikan makanan '
                    'dengan standar cita rasa yang berkelas. Diolah secara '
                    'profesional dalam menyajikan sajian masakan yang lezat, '
                    'halal, dan berkualitas.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 40),
              Image.asset(
                'assets/images/halal_icon.png', // Make sure this path is correct
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
