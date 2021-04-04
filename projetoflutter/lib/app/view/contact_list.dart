import 'package:flutter/material.dart';

import '../my_app.dart';

class ContactList extends StatelessWidget {
  final lista = [
    {
      'nome': 'Carlos',
      'telefone': '(44)3422-3275',
      'url_avatar':
          'https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png'
    },
    {
      'nome': 'Anderson',
      'telefone': '(11)9652-5454',
      'url_avatar':
          'https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_1280.png'
    },
    {
      'nome': 'Maria',
      'telefone': '(44)226-6584',
      'url_avatar':
          'https://cdn.pixabay.com/photo/2021/03/12/08/01/child-6089047_1280.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de contatos'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          var contato = lista[i];
          var avatar = CircleAvatar(
            backgroundImage: NetworkImage(contato['url_avatar']),
          );
          return ListTile(
            leading: avatar,
            title: Text(contato['nome']),
            subtitle: Text(contato['telefone']),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(onPressed: null, icon: Icon(Icons.edit)),
                  IconButton(onPressed: null, icon: Icon(Icons.delete)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
