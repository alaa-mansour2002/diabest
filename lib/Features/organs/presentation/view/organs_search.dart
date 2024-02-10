import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Features/organs/presentation/widget/eyes_view.dart';
import 'package:diabestapp/Features/organs/presentation/widget/foot_view.dart';
import 'package:diabestapp/Features/organs/presentation/widget/heart_view.dart';
import 'package:diabestapp/Features/organs/presentation/widget/skin_view.dart';
import 'package:diabestapp/Features/organs/presentation/widget/teeth_view.dart';
import 'package:flutter/material.dart';

class organsView extends StatefulWidget {
  const organsView({super.key});

  @override
  State<organsView> createState() => _organsViewState();
}
class _organsViewState extends State<organsView> {
  static String searchQuery = '';
  List<Map<String, dynamic>> getFilteredItems() {
    return [
      {'title': 'Teeth', 'value': 1, 'page': const TeethView()},
      {'title': 'Skin', 'value': 2, 'page': const SkinView()},
      {'title': 'Foot', 'value': 3, 'page': const FootView()},
      {'title': 'Eyes', 'value': 6, 'page': const EyesView()},
      {'title': 'Heart', 'value': 11, 'page': const HeartView()},
    ].where((item) {
      final title = item['title'] as String;
      return title.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();
  }

  int? organ;

  void navigateToPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredItems = getFilteredItems();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Select the affected Organ",
              style: CustomTextStyles.lohit500style24,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                  hintText: 'Search', prefixIcon: Icon(Icons.search)),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: filteredItems.map((item) {
                return RadioListTile(
                  title: Text(
                    item['title'] as String,
                    style: CustomTextStyles.lohit500style18,
                  ),
                  value: item['value'],
                  groupValue: organ,
                  onChanged: (value) {
                    setState(() {
                      organ = value as int?;
                      navigateToPage(item['page'] as Widget);
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
