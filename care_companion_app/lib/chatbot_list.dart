import 'package:flutter/material.dart';

class ListViewHome extends StatelessWidget {
  final titles = ["Alfred", "Beatriz", "Clay", "Dima"];
  final subtitles = [
    "Sensorial Impairments",
    "Memory Care",
    "Hospice Care",
    "Assisted Living"
  ];
  final avatars = [
    'assets/images/alfredHeadshot.png',
    'assets/images/beatrizHeadshot.png',
    'assets/images/clayHeadshot.png',
    'assets/images/dimaHeadshot.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              //Scaffold.of(context).showSnackBar(SnackBar(
              //  content: Text('${titles[index]} pressed!'),
              //));
            },
            title: Text(titles[index]),
            subtitle: Text(subtitles[index]),
            leading: CircleAvatar(
              foregroundImage: AssetImage(avatars[index]),
            ),
          ),
        );
      },
    );
  }
}
