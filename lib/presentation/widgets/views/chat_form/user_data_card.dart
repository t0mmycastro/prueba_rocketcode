import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_rocketcode/core/provider/form_provider.dart';

class UserDataDisplay extends StatelessWidget {
  const UserDataDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final userDataProvider = context.watch<UserDataProvider>();
    final userData = userDataProvider.userData;

    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 142, 249),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text("Nombre: ${userData.personalData.name} ${userData.personalData.lastName}", style: const TextStyle(color: Colors.white)),
          Text("Fecha de Nacimiento: ${userData.birthDate.day} ${userData.birthDate.month} ${userData.birthDate.year}", style: const TextStyle(color: Colors.white)),
          Text("Correo Electrónico: ${userData.contactInformation.email}", style: const TextStyle(color: Colors.white)),
          Text("Teléfono: ${userData.contactInformation.phone}", style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
