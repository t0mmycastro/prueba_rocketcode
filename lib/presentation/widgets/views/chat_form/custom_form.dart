import 'package:flutter/material.dart';


class CustomFormInput extends StatelessWidget {
  final String fieldLabels;
  final ValueChanged<String>? onInputChanged;
  final TextEditingController? inputController;
  final String? hintText;
  final String? errorText;
  final VoidCallback? onEditingComplete;
  final String? Function(String?)? validator;


  const CustomFormInput({
    Key? key,
    required this.fieldLabels,
    this.inputController,
    this.onInputChanged,
    this.onEditingComplete,
    this.validator,  this.hintText,  this.errorText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onInputChanged,
      controller: inputController,
      onEditingComplete: onEditingComplete,
      validator: validator,
      decoration: InputDecoration( 
        labelText: fieldLabels,
        hintText: hintText,
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),    
        ),
        ),
    );
  }
}
