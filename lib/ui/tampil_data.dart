import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;

    return Scaffold(
      backgroundColor:
          const Color(0xFF1E1F1C), // Monokai background color (same as appBar)
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1F1C), // Dark Monokai shade
        title: const Text(
          "Introduction",
          style: TextStyle(
            color: Color(0xFFF8F8F2), // Monokai white text
            fontFamily: 'JetBrainsMono',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false, // Remove back button from AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.center, // Aligning text to center
            children: [
              // Displaying a circular profile icon
              const CircleAvatar(
                backgroundColor: Color(0xFF4B4B4B), // Dark Monokai grey
                radius: 50,
                child: Icon(
                  Icons.person,
                  color: Color(0xFFF8F8F2), // Monokai white
                  size: 60,
                ),
              ),
              const SizedBox(height: 20),
              // Displaying user data without a card
              Text(
                "Nama: $nama",
                style: const TextStyle(
                  color: Color(0xFFF8F8F2), // Monokai white
                  fontFamily: 'JetBrainsMono',
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "NIM: $nim",
                style: const TextStyle(
                  color: Color(0xFFF8F8F2), // Monokai white
                  fontFamily: 'JetBrainsMono',
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Umur: $umur tahun",
                style: const TextStyle(
                  color: Color(0xFFF8F8F2), // Monokai white
                  fontFamily: 'JetBrainsMono',
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 30),

              // Back button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFFF92672), // Monokai bright pink
                  foregroundColor: const Color(0xFFF8F8F2), // Monokai white
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  Navigator.pop(context); // Action to go back
                },
                child: const Text(
                  'Back',
                  style: TextStyle(
                    fontFamily: 'JetBrainsMono',
                    fontSize: 16,
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
