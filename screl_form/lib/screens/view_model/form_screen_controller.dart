import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormScreenController extends GetxController {
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

  final TextEditingController subjectController = TextEditingController();
  final TextEditingController previewController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

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
}
