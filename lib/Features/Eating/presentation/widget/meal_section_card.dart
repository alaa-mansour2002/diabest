import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:flutter/material.dart';

class MealSectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> items;
  final String image;
  final VoidCallback onTap;

  MealSectionCard({
    required this.title,
    required this.icon,
    required this.items,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(
              leading: Icon(icon),
              title: Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ExpansionTile(
              title: Text('Like',style: CustomTextStyles.lohit500style20,),
              children: [
                for (String item in items)
                  ListTile(
                    title: Text(item),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}