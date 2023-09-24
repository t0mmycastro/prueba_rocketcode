import 'package:flutter/material.dart';

class ConsultsWidget extends StatelessWidget {
  const ConsultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 142, 249),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                "¡Respondemos tus consultas!",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 14,),
              Icon(Icons.assignment_outlined, size: 50,)
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(Icons.alarm),
              Text(
                "En menos de 5 minutos",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
