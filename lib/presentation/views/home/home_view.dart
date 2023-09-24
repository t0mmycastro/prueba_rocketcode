import 'package:flutter/material.dart';
import 'package:prueba_rocketcode/presentation/views/chat_form/chat_form_view.dart';
import 'package:prueba_rocketcode/presentation/widgets/app/appbar/appbar_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: const AppBarWidget(),
        body: ChatForm(formKey: formKey,));
  }

}
