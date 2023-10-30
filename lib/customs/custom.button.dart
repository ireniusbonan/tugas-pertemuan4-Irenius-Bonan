import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final GestureTapCallback onPressed;

  CustomButton({required this.text, required this.onPressed});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blueAccent, // Warna latar belakang tombol
        onPrimary: Colors.white, // Warna teks tombol
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(24), // Bentuk tombol yang dibulatkan
        ),
      ),
      onPressed: widget
          .onPressed, // Tambahkan tindakan yang akan dilakukan saat tombol ditekan di sini
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
