import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      leading: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/person.jpg'),
          )
        ],
      ),
      title: Container(
        margin: const EdgeInsets.all(5),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Valeria",
                  style:
                      TextStyle(fontSize: 18.5, fontWeight: FontWeight.w500)),
              Text("Escribiendo...", style: TextStyle(fontSize: 13))
            ]),
      ),
      actions: const [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.phone,
              color: Colors.black,
            ))
      ],
    );
  }
   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
