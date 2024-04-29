import 'package:first_app/screen/output_screen.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  ListTileWidget({required this.index, required this.assetURL, super.key});

  int index;
  String assetURL;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          assetURL,
        ),
      ),
      // leading: Image.asset(assetURL),
      title: Text("Ayush Shrestha $index"),
      subtitle: const Text("Kathmandu, Nepal"),
      // trailing: const Icon(Icons.delete),
      trailing: const Wrap(
        spacing: 8,
        children: [
          Icon(Icons.delete),
          Icon(Icons.add),
        ],
      ),

      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return OutPutScreen(
            currentIndex: index,
          );
        }));
      },
    );
  }
}
