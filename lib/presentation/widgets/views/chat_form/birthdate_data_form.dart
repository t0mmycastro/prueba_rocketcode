import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_rocketcode/core/data/models/validator/validator_model.dart';
import 'package:prueba_rocketcode/core/provider/form_provider.dart';
import 'package:prueba_rocketcode/presentation/widgets/views/chat_form/custom_form.dart';


class BirthDateForm extends StatelessWidget {
  const BirthDateForm({super.key});

  @override
  Widget build(BuildContext context) {
    final userDataProvider = context.watch<UserDataProvider>();

    return Column(
      children: [
        const Text("Cuál es tu fecha de nacimiento?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        const SizedBox(
          height: 10,
        ),
        CustomFormInput(
          fieldLabels: "Dia",
          onInputChanged: (value) {
            userDataProvider.updateDayInputText(value);
          },
          validator: (value) => Validator.validateString(value!),
          errorText: userDataProvider.dayInputText.isNotEmpty
              ? Validator.validateString(userDataProvider.dayInputText)
              : null,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomFormInput(
          fieldLabels: "Mes",
          onInputChanged: (value) {
            userDataProvider.updateMonthInputText(value);
          },
          validator: (value) => Validator.validateString(value!),
          errorText: userDataProvider.monthInputText.isNotEmpty
              ? Validator.validateString(userDataProvider.monthInputText)
              : null,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomFormInput(
          fieldLabels: "Año",
          onInputChanged: (value) {
            userDataProvider.updateYearInputText(value);
          },
          validator: (value) => Validator.validateString(value!),
          errorText: userDataProvider.yearInputText.isNotEmpty
              ? Validator.validateString(userDataProvider.yearInputText)
              : null,
        )
      ],
    );
  }
}
