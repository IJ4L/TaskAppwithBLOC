import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hint;
  final int? maxlenght;
  final Function()? ontap;
  const MyTextfield({
    Key? key,
    required this.hint,
    this.ontap,
    this.maxlenght,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
        fillColor: Colors.black.withOpacity(0.025),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
