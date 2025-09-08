import 'package:flutter/material.dart';
import 'package:mentorship/utils/constants/app_assets.dart';
import 'package:mentorship/utils/constants/text_styles.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Profile Setting',
          style: TextStyles.fontsize16weight700.copyWith(
            fontSize: 18,
            color: Color(0xff1D1F22),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      Assets.assetsImagesPerson1,
                    ), // Placeholder image
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.black54,
                      radius: 20,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            Row(
              children: [
                Expanded(child: _buildTextField('First Name', 'Sunie')),
                const SizedBox(width: 16),
                Expanded(child: _buildTextField('Last Name', 'Pham')),
              ],
            ),
            const SizedBox(height: 24),
            _buildTextField('Email', 'sunieux@gmail.com'),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: _buildTextField('Gender', 'Female')),
                const SizedBox(width: 16),
                Expanded(child: _buildTextField('Phone', '(+1) 23456789')),
              ],
            ),
            const SizedBox(height: 64),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement save changes logic
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Changes saved!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff343434),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Save change',
                  style: TextStyles.fontsize20weight700.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String initialValue) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyles.fontsize14weight400.copyWith(
          color: Color(0xffA6ABC4),
        ),

        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
      ),
      controller: TextEditingController(text: initialValue),
    );
  }
}
