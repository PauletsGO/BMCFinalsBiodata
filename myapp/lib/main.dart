import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3FAF8),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0F766E)),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          labelStyle: const TextStyle(fontSize: 13, color: Color(0xFF4B5563)),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFB7D8D3)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFB7D8D3)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF0F766E), width: 1.5),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0F766E),
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: const BioDataPage(),
    );
  }
}

class BioDataPage extends StatefulWidget {
  const BioDataPage({super.key});
  @override
  State<BioDataPage> createState() => _BioDataPageState();
}

class _BioDataPageState extends State<BioDataPage> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final birthController = TextEditingController();
  final placeBirthController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final currentAddressController = TextEditingController();
  final permanentAddressController = TextEditingController();
  final citizenshipController = TextEditingController();
  final nationalityController = TextEditingController();
  final civilStatusController = TextEditingController();
  final elementaryController = TextEditingController();
  final elementaryYearController = TextEditingController();
  final highController = TextEditingController();
  final highYearController = TextEditingController();
  final collegeController = TextEditingController();
  final collegeYearController = TextEditingController();
  String output = '';
  void submitForm() {
    setState(() {
      output =
          '''
Name: ${nameController.text}
Mobile Number: ${mobileController.text}
Email Address: ${emailController.text}
Date of Birth: ${birthController.text}
Place of Birth: ${placeBirthController.text}
Age: ${ageController.text}
Gender: ${genderController.text}
Current Address: ${currentAddressController.text}
Permanent Address: ${permanentAddressController.text}
Citizenship: ${citizenshipController.text}
Nationality: ${nationalityController.text}
Civil Status: ${civilStatusController.text}
Elementary School: ${elementaryController.text}
Elementary Graduate Date: ${elementaryYearController.text}
High School: ${highController.text}
High School Graduate Date: ${highYearController.text}
College School: ${collegeController.text}
College Graduate Date: ${collegeYearController.text}''';
    });
  }

  Widget inputField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType? keyboardType,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, size: 20, color: const Color(0xFF0F766E)),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 13),
      decoration: BoxDecoration(
        color: const Color(0xFF0F766E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    birthController.dispose();
    placeBirthController.dispose();
    ageController.dispose();
    genderController.dispose();
    currentAddressController.dispose();
    permanentAddressController.dispose();
    citizenshipController.dispose();
    nationalityController.dispose();
    civilStatusController.dispose();
    elementaryController.dispose();
    elementaryYearController.dispose();
    highController.dispose();
    highYearController.dispose();
    collegeController.dispose();
    collegeYearController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: SizedBox(
            width: 700,
            child: Card(
              elevation: 1,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Color(0xFFB7D8D3)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Bio Data Form',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF134E4A),
                      ),
                    ),
                    const SizedBox(height: 28),
                    sectionTitle('Personal Information'),
                    const SizedBox(height: 20),
                    inputField(
                      controller: nameController,
                      label: 'Name',
                      icon: Icons.person_outline,
                    ),
                    inputField(
                      controller: mobileController,
                      label: 'Mobile Number',
                      icon: Icons.phone_outlined,
                      keyboardType: TextInputType.phone,
                    ),
                    inputField(
                      controller: emailController,
                      label: 'Email Address',
                      icon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    inputField(
                      controller: birthController,
                      label: 'Date of Birth',
                      icon: Icons.cake_outlined,
                    ),
                    inputField(
                      controller: placeBirthController,
                      label: 'Place of Birth',
                      icon: Icons.location_city_outlined,
                    ),
                    inputField(
                      controller: ageController,
                      label: 'Age',
                      icon: Icons.calendar_today_outlined,
                      keyboardType: TextInputType.number,
                    ),
                    inputField(
                      controller: genderController,
                      label: 'Gender',
                      icon: Icons.wc,
                    ),
                    inputField(
                      controller: currentAddressController,
                      label: 'Current Address',
                      icon: Icons.home_outlined,
                    ),
                    inputField(
                      controller: permanentAddressController,
                      label: 'Permanent Address',
                      icon: Icons.home_work_outlined,
                    ),
                    inputField(
                      controller: citizenshipController,
                      label: 'Citizenship',
                      icon: Icons.badge_outlined,
                    ),
                    inputField(
                      controller: nationalityController,
                      label: 'Nationality',
                      icon: Icons.flag_outlined,
                    ),
                    inputField(
                      controller: civilStatusController,
                      label: 'Civil Status',
                      icon: Icons.people_outline,
                    ),
                    const SizedBox(height: 16),
                    sectionTitle('Educational Background'),
                    const SizedBox(height: 20),
                    inputField(
                      controller: elementaryController,
                      label: 'Elementary School Name',
                      icon: Icons.school_outlined,
                    ),
                    inputField(
                      controller: elementaryYearController,
                      label: 'Elementary Graduate Date',
                      icon: Icons.date_range_outlined,
                      keyboardType: TextInputType.number,
                    ),
                    inputField(
                      controller: highController,
                      label: 'High School Name',
                      icon: Icons.school_outlined,
                    ),
                    inputField(
                      controller: highYearController,
                      label: 'High School Graduate Date',
                      icon: Icons.date_range_outlined,
                      keyboardType: TextInputType.number,
                    ),
                    inputField(
                      controller: collegeController,
                      label: 'College School Name',
                      icon: Icons.school_outlined,
                    ),
                    inputField(
                      controller: collegeYearController,
                      label: 'College Graduate Date',
                      icon: Icons.date_range_outlined,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: submitForm,
                      child: const Text('Submit'),
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      'Output',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF134E4A),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6F4F1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xFFB7D8D3)),
                      ),
                      child: Text(
                        output.isEmpty
                            ? 'Your submitted information will appear here.'
                            : output,
                        style: const TextStyle(fontSize: 14, height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}