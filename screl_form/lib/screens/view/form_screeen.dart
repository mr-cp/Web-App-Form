import 'package:flutter/material.dart';

import '../../utils/constants/constraints.dart';
import 'widget/desktop.dart';
import 'widget/mobile.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    final h = screenHeight(context);
    final w = screenWidth(context);

    return Scaffold(
      
      body: Container(
        height: h,
        width: w,
        color: const Color.fromARGB(255, 213, 215, 218),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              child: constraints.maxWidth > 850 && constraints.maxHeight < 700
                  ? Desktop(h: h, w: w)
                  : Mobile(h: h, w: w),
            );
          },
        ),
      ),
    );
  }
}
