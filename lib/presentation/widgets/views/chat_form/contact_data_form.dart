import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_rocketcode/core/data/models/validator/validator_model.dart';
import 'package:prueba_rocketcode/core/provider/form_provider.dart';
import 'package:prueba_rocketcode/presentation/widgets/views/chat_form/custom_form.dart';

class ContactDataForm extends StatelessWidget {
  const ContactDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    final userDataProvider = context.watch<UserDataProvider>();

    return Column(
      children: [
        const Text("Datos de contacto",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        const SizedBox(
          height: 10,
        ),
        CustomFormInput(
          fieldLabels: "Email",
          onInputChanged: (value) {
            userDataProvider.updateEmailInputText(value);
          },
          validator: (value) => Validator.validateEmail(value!),
          errorText: userDataProvider.emailInputText.isNotEmpty
              ? Validator.validateEmail(userDataProvider.emailInputText)
              : null,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomFormInput(
          fieldLabels: "Teléfono",
          onInputChanged: (value) {
            userDataProvider.updatePhoneInputText(value);
          },
          validator: (value) => Validator.validatePhone(value!),
          errorText: userDataProvider.phoneInputText.isNotEmpty
              ? Validator.validateString(userDataProvider.phoneInputText)
              : null,
        ),
      ],
    );
  }
}
