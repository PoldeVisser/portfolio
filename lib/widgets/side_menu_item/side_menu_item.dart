import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/style.dart';

class SideMenuItem extends StatelessWidget {
  final IconData icon;
  final String menuItemName;

  const SideMenuItem({ Key? key, required this.icon, required this.menuItemName }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: blue5, size: 24,),
            SizedBox(width: 20,),
            Text(menuItemName, style: TextStyle(fontSize: 24, color: blue5),),
          ],
        ),
      ),
    );
  }
}