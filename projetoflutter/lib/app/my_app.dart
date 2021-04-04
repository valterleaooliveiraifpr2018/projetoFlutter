import 'package:flutter/material.dart';
import 'package:projetoflutter/app/view/contact_form.dart';
import 'package:projetoflutter/app/view/contact_list.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const CONTACT_FORM = 'contact_form';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      routes: {
        HOME: (context) => ContactList(),
        CONTACT_FORM: (context) => Contact_Form(),
      },
    );
  }
}
