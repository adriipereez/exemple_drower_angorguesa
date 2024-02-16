import 'package:flutter/material.dart';

class appBarPers extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const appBarPers({Key? key, this.titleText = "Diamond Motor Sport"}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 165, 161, 161),
      title: Row(
        children: [
          Text(
            titleText,
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold, 
              fontSize: 20, 
              fontFamily: 'Ubuntu', 
            ),
          ),
        ],
      ),
    );
  }
}
