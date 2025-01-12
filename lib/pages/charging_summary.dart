import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF001F3F)),
        useMaterial3: true,
      ),
      home: const ImageScreen(),
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),
      body: Container(
        color: const Color(0xFF001F3F),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Removed excessive padding before the image
                Center(
                  child: Image.network(
                    'https://static.vecteezy.com/system/resources/thumbnails/036/335/815/small_2x/modern-and-luxury-white-electric-car-is-parked-and-charged-in-a-ev-service-station-isolate-on-transparent-background-file-png.png',
                    width: 400,
                    height: 250, // Adjusted height to reduce space
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 10), // Reduced spacing from original 30
                const Text(
                  'Thank you for using our service.',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Let us help you make the most of your trip.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Summary of Charging',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                _buildRow(Icons.calendar_month, 'Date of Charge', '10 October 2024'),
                _buildRow(Icons.location_on, 'Charging Station', 'Home Charger'),
                _buildRow(Icons.bolt, 'Charging Type', 'Type 2'),
                _buildRow(Icons.timer, 'Charging Time', '01:30:45'),
                _buildRow(Icons.flash_on, 'Charged Units', '12.345 kWh'),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.white70,
                  thickness: 1,
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        'Total Cost',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        '67.89 Baht',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Icon(icon, color: Colors.white70),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const Spacer(),
            Text(
              value,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}