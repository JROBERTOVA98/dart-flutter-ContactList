import 'package:flutter/material.dart';
import 'package:listview_app/src/model/contact_model.dart';
import 'package:listview_app/src/screens/contact_item.dart';

class Contact extends StatelessWidget {
  buildList() {
    return <ContactModel>[
      ContactModel(name: "Roberto Vargas", email: "jrobertova98@gmail.com"),
      ContactModel(name: "Sofia Robertos", email: "sofirobs@gmail.com"),
      ContactModel(name: "Max Vargas", email: "maxvargas@gmail.com"),
      ContactModel(name: "Valentina Vargas", email: "Valentina@gmail.com"),
      ContactModel(name: "Robert martin", email: "robert.martin@gmail.com"),
      ContactModel(name: "Linux tolvar", email: "linux.tolvar@gmail.com"),
    ];
  }

  List<ContactItem> buildContactList() {
    return buildList().map<ContactItem>((contact) => ContactItem(contact: contact)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contactos"),
      ),
      body: ListView(
        children: buildContactList(),
      ),
    );
  }
}
