import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Younis Birthday",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Younis Birthday in 13 of june",
                style: TextStyle(
                    color: Colors.black.withOpacity(.4), fontSize: 20),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 30,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              "June22 2024",
              style:
                  TextStyle(color: Colors.black.withOpacity(.4), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
