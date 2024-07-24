import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CONTACT LIST',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          myListTile(
            name: 'SHAHID',
            number: 9141144191,
            myfun: () {
              print('SHAHID CALLING');
            },
          ),
          myListTile(
            name: 'SHAMEEMA',
            number: 8871156792,
            myfun: () {
              print('SHAMEEMA calling');
            },
          ),
          myListTile(
            name: 'BATOOL',
            number: 7145678788,
            myfun: () {
              print('Batool calling');
            },
          ),
          myListTile(
              name: 'SALEEM',
              number: 7363537228,
              myfun: () {
                print('SALEEM CALLING');
              })
        ],
      ),
    );
  }

  Widget myListTile({
    required String name,
    required int number,
    required void Function() myfun,
  }) {
    return Column(
      children: [
        ListTile(
          onTap: myfun,
          title: Text(
            name,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            number.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          trailing: Container(
            width: 100,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Send message');
                  },
                  child: Icon(
                    Icons.message,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    print('Calling');
                  },
                  child: Icon(
                    Icons.call,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
