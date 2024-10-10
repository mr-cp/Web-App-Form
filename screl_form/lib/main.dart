import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'screens/model/form_data.dart';
import 'screens/view/form_screeen.dart';

void main() {
  // final forms = FormsData(
  //     email: 'rishad551@gmail.com',
  //     name: 'rishad',
  //     preview: 'None',
  //     subject: 'Physics');

  // print('---------------------------------------');
  // print(forms.toJson());
  // print('---------------------------------------');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Screl Form',
      home: FormScreen(),
    );
  }
}
