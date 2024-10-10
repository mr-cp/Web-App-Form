import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/form_data.dart';

class FormScreenController extends GetxController {
  @override
  void onInit() {
    subjectController = TextEditingController();
    previewController = TextEditingController();
    nameController = TextEditingController();
    emailController = TextEditingController();
    loadFormData();
    super.onInit();
  }

  bool isChanged1 = false;
  bool isChanged2 = false;

  List<Map<String, String>> stepList = [
    {
      'index': '1',
      'title': 'Create New Campaign',
      'subTitle': 'Fill out these details and get your campaign ready'
    },
    {
      'index': '2',
      'title': 'Create Segments',
      'subTitle': 'Get full control over your audience'
    },
    {
      'index': '3',
      'title': 'Bidding Strategy',
      'subTitle': 'Optimize your campaign reach with adsense'
    },
    {
      'index': '4',
      'title': 'Site Links',
      'subTitle': 'Setup your customer journey flow'
    },
    {
      'index': '5',
      'title': 'Review campaign',
      'subTitle': 'Double check your campaign is ready to get'
    },
  ];

  int selectedIndex = 0;

  bool zerothIndex = false;

// Next step function:::::::::
  void nextStep() {
    if (selectedIndex < stepList.length - 1) {
      selectedIndex++;
      update();
    }
  }

// Previous step function:::::::::
  void prevStep() {
    if (selectedIndex > 0) {
      selectedIndex--;
    }
    zerothIndex = (selectedIndex == 0);
    update();
  }

  final formKey = GlobalKey<FormState>();

  TextEditingController subjectController = TextEditingController();
  TextEditingController previewController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // email validation:::::::::::
  bool isValidEmail(String email) {
    final RegExp regex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return regex.hasMatch(email);
  }

  // form validation:::::::::
  bool snackbarShown = false;

  void validateAndProceed() {
    if (formKey.currentState?.validate() ?? false) {
      nextStep();
      snackbarShown = false;
    } else {
      if (!snackbarShown) {
        Get.snackbar(
          'Validation Error',
          'Please fill in all fields correctly.',
          snackPosition: SnackPosition.BOTTOM,
        );
        snackbarShown = true;
      }
    }
  }

// Save data from the form field:::::::::::::::::
  Future<void> saveFormData() async {
    final prefs = await SharedPreferences.getInstance();
    final formData = FormsData(
      subject: subjectController.text,
      preview: previewController.text,
      name: nameController.text,
      email: emailController.text,
    );
    // print('Save form working::::::::::::::::');

    final jsonString = json.encode(formData.toJson());
    await prefs.setString('form_data', jsonString);
    update();
  }

  // Load data to the form field:::::::::::::::::
  Future<void> loadFormData() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('form_data');

    if (jsonString != null) {
      final jsonMap = json.decode(jsonString);
      final formData = FormsData.fromJson(jsonMap);
      // print('Load form form working::::::::::::::::');

      subjectController.text = formData.subject;
      previewController.text = formData.preview;
      nameController.text = formData.name;
      emailController.text = formData.email;
    }
    update();
  }
}
