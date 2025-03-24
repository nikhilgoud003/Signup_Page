import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(const SignupValidationApp());
}

class SignupValidationApp extends StatelessWidget {
  const SignupValidationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup Validation',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SignupForm(),
    );
  }
}
class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _passwordVisible = false;
  bool _termsAccepted = false;
  bool _isLoading = false;
  File? _profileImage;

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _dobController.text =
            "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
      });
    }
  }