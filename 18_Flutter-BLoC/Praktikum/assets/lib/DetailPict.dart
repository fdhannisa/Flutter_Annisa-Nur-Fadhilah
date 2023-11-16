import 'package:assets/ReadPicture.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPict extends StatelessWidget {
  const DetailPict({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
                padding: const EdgeInsets.all(8),
                child: Image.asset('assets_folder/params.png'),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Ingin Melihat Gambar Ini?',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ReadPicture()),
                    );
                  },
                  child: Text(
                    'Iya',
                    style: GoogleFonts.poppins(fontSize: 17),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Tidak',
                    style: GoogleFonts.poppins(fontSize: 17),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}