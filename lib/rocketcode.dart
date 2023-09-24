import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_rocketcode/core/provider/form_provider.dart';
import 'package:prueba_rocketcode/presentation/views/home/home_view.dart';

class TestRocketCode extends StatelessWidget {
  const TestRocketCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserDataProvider(),
      child: MaterialApp(
        title: 'RocketCode',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'OpenSans',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Home(),
      ),
    );
  }
}
