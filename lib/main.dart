import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:training_app/application/providers/body_parts_provider.dart';
import 'package:training_app/ui/features/main/main_screen.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BodyPartsProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Training App",
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
