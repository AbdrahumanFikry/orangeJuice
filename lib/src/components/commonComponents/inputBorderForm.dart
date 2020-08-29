import 'package:flutter/material.dart';

class InputBorderForm extends StatelessWidget {
  final String hintText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final bool isLoading;
  final bool readOnly;
  final IconData prefixIcon;

  const InputBorderForm({
    @required this.hintText,
    this.onSaved,
    this.validator,
    this.isLoading = false,
    this.readOnly = false,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 7.0,
        vertical: 5.0,
      ),
      child: TextField(
        readOnly: readOnly,
        maxLines: null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[100],
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 10.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[500],
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[300],
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[300],
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.grey[300],
            ),
          ),
          hintStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: screen.size.width > 360 ? 16.0 : 14.0,
          ),
        ),
      ),
    );
  }
}
