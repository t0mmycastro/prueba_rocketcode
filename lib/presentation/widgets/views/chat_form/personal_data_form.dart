import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_rocketcode/core/data/models/validator/validator_model.dart';
import 'package:prueba_rocketcode/core/provider/form_provider.dart';
import 'package:prueba_rocketcode/presentation/widgets/views/chat_form/custom_form.dart';

class PersonalDataForm extends StatelessWidget {
  const PersonalDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    final userDataProvider = context.watch<UserDataProvider>();

    return Column(
      children: [
        const Text("Cuál es tu nombre?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        const SizedBox(
          height: 10,
        ),
        CustomFormInput(
          fieldLabels: "Nombre",
          onInputChanged: (value) {
            userDataProvider.updateNombreInputText(value);
          },
          validator: (value) => Validator.validateString(value!),
          errorText: userDataProvider.nombreInputText.isNotEmpty
              ? Validator.validateString(userDataProvider.nombreInputText)
              : null,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomFormInput(
          fieldLabels: "Apellido",
          onInputChanged: (value) {
            userDataProvider.updateApellidoInputText(value);
          },
          validator: (value) => Validator.validateString(value!),
          errorText: userDataProvider.apellidoInputText.isNotEmpty
              ? Validator.validateString(userDataProvider.apellidoInputText)
              : null,
        ),
      ],
    );
  }
}
