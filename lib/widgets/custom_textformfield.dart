import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const CustomTextFormField({super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 10),
        Container(
          height: 65,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color(0XFFFF2828)
            ),
            borderRadius: BorderRadius.circular(15)
          ),
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none
            ),
          ),
        ),
      ],
    );
  }
}