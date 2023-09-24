import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_rocketcode/core/provider/form_provider.dart';
import 'package:prueba_rocketcode/presentation/widgets/views/chat_form/consults_card.dart';
import 'package:prueba_rocketcode/presentation/widgets/views/chat_form/user_data_card.dart';
import 'package:prueba_rocketcode/presentation/widgets/views/chat_form/birthdate_data_form.dart';
import 'package:prueba_rocketcode/presentation/widgets/views/chat_form/contact_data_form.dart';
import 'package:prueba_rocketcode/presentation/widgets/views/chat_form/personal_data_form.dart';

class ChatForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const ChatForm({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final userDataProvider = context.watch<UserDataProvider>();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ConsultsWidget(),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/person.jpg'),
                    radius: 25,
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 241, 241),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [PersonalDataForm()],
                    ),
                  )),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 142, 249),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Nombre: ${userDataProvider.nombreInputText} ${userDataProvider.apellidoInputText}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/person.jpg'),
                    radius: 25,
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 241, 241),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [BirthDateForm()],
                    ),
                  )),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 142, 249),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Fecha de nacimiento: ${userDataProvider.dayInputText} ${userDataProvider.monthInputText} ${userDataProvider.yearInputText}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/person.jpg'),
                    radius: 25,
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 241, 241),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [ContactDataForm()],
                    ),
                  )
                      ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 142, 249),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Correo electronico: ${userDataProvider.emailInputText}\nTeléfono: ${userDataProvider.phoneInputText}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color.fromARGB(255, 255, 142,
                            249);
                      }
                      return const Color(0xFFFF3EC5);
                    },
                  ),
                ),
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    final name = userDataProvider.nombreInputText;
                    final lastName = userDataProvider.apellidoInputText;
                    final day = userDataProvider.dayInputText;
                    final month = userDataProvider.monthInputText;
                    final year = userDataProvider.yearInputText;
                    final email = userDataProvider.emailInputText;
                    final phone = userDataProvider.phoneInputText;

                    userDataProvider.updatePersonalData(name, lastName);
                    userDataProvider.updateBirthDate(day, month, year);
                    userDataProvider.updateContactInformation(email, phone);

                    await userDataProvider.saveUserDataToSession(); // Guardamos los datos en variables de sesión.
                    userDataProvider.toggleUserDataVisibility();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            'Por favor, corrija los errores en el formulario.'),
                      ),
                    );
                  }
                },
                child: const Text(
                  "Iniciar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              if (userDataProvider.isUserDataVisible) const UserDataDisplay()
            ],
          ),
        ),
      ),
    );
  }
}
