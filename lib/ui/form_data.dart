import 'package:flutter/material.dart';

import '/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
  bool _isLoading = false; // Tambahkan variable untuk loader

  // Method untuk validasi form
  bool _isFormValid() {
    return _namaController.text.isNotEmpty &&
        _nimController.text.isNotEmpty &&
        _tahunController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF272822), // Monokai background color
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1F1C), // Darker Monokai shade
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Input Data",
          style: TextStyle(
            color: Color(0xFFF8F8F2), // Monokai white text
            fontFamily: 'JetBrainsMono',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF1E1F1C), // Dark Monokai shade
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _logo(),
                    const SizedBox(height: 20),
                    _header(),
                    const SizedBox(height: 30),
                    _textboxWithStroke("Name", _namaController),
                    const SizedBox(height: 20),
                    _textboxWithStroke("NIM", _nimController),
                    const SizedBox(height: 20),
                    _textboxWithStroke("Year of Birth", _tahunController),
                    const SizedBox(height: 30),
                    _isLoading
                        ? _loader()
                        : _tombolSimpan(), // Tampilkan loader atau tombol simpan
                    const SizedBox(height: 30), // Add space for the footer
                    _footer(), // Footer widget
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _logo() {
    return const Center(
      child: Icon(
        Icons.person_outline,
        color: Color(0xFFF8F8F2), // Monokai white
        size: 100,
      ),
    );
  }

  Widget _header() {
    return const Text(
      "Please enter your details below:",
      style: TextStyle(
        color: Color(0xFF75715E), // Monokai light green
        fontFamily: 'JetBrainsMono',
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _textboxWithStroke(String label, TextEditingController controller) {
    return TextField(
      style: const TextStyle(
        color: Color(0xFFF8F8F2), // Monokai white
        fontFamily: 'JetBrainsMono',
      ),
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Color(0xFFA6E22E), // Monokai bright green
          fontFamily: 'JetBrainsMono',
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFF4B4B4B), width: 2), // Monokai dark grey
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color(0xFFA6E22E), width: 2), // Monokai bright green
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: const Color(0xFF1E1F1C), // Dark Monokai shade
      ),
      keyboardType:
          label == "Year of Birth" ? TextInputType.number : TextInputType.text,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF92672), // Monokai bright pink
        foregroundColor: const Color(0xFFF8F8F2), // Monokai white
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      onPressed: () {
        if (_isFormValid()) {
          setState(() {
            _isLoading = true; // Set loader ke true
          });

          Future.delayed(const Duration(seconds: 2), () {
            setState(() {
              _isLoading = false; // Matikan loader
            });

            String nama = _namaController.text;
            String nim = _nimController.text;
            int tahun = int.parse(_tahunController.text);

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    TampilData(nama: nama, nim: nim, tahun: tahun)));
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please fill all fields.'),
            ),
          );
        }
      },
      child: const Text(
        'Save',
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'JetBrainsMono',
        ),
      ),
    );
  }

  Widget _loader() {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
            Color(0xFFA6E22E)), // Monokai bright green
      ),
    );
  }

  Widget _footer() {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        '© 2024 Muhamad Galih. All rights reserved.',
        style: TextStyle(
          color: Color(0xFF75715E), // Monokai light green
          fontFamily: 'JetBrainsMono',
          fontSize: 14,
        ),
      ),
    );
  }
}
