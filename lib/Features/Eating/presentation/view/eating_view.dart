import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/Eating/presentation/widget/create_your_meal_form.dart';
import 'package:flutter/material.dart';

class EatingView extends StatelessWidget {
  const EatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.white,
     appBar: AppBar(
       title:const Text(AppStrings.mealPlanner,style: CustomTextStyles.lohit500style20,),
       elevation: 0,
    ),
      body:const SafeArea(
        child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: CustomScrollView(
                  physics:  BouncingScrollPhysics(),
                  slivers: [
                     SliverToBoxAdapter(
                        child: CreateYourMealForm()
                        ),
                        ]))));
  }
}



// class MealSectionPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Meal Sections'),
//       ),
//       body: ListView(
//         children: [
//           MealSectionCard(
//             title: 'Breakfast',
//             icon: Icons.fastfood,
//             items: ['Bread', 'Egg', 'Cheese', 'Milk'],
//             image: Assets.breakfast,
//             onTap: () => _openDetailsPage(context, 'Breakfast Details'),
//           ),
//           MealSectionCard(
//             title: 'Lunch',
//             icon: Icons.local_dining,
//             items: ['Rice', 'Meat', 'Fish', 'Chicken'],
//             image: Assets.lunch,
//             onTap: () => _openDetailsPage(context, 'Lunch Details'),
//           ),
//           MealSectionCard(
//             title: 'Dinner',
//             icon: Icons.dinner_dining,
//             items: ['Yogurt', 'Fruits', 'Dates'],
//             image: Assets.dinner, // صورة العشاء
//             onTap: () => _openDetailsPage(context, 'Dinner Details'),
//           ),
//           MealSectionCard(
//             title: 'Bad Eating Habits You Can Break for Good',
//             icon: Icons.fastfood,
//             items: ['Chips', 'Nuts', 'Chocolate'],
//             image: Assets.healthyMovieSnacks, // صورة الوجبة الخفيفة
//             onTap: () => _openDetailsPage(context, 'Snack Details'),
//           ),
//           MealSectionCard(
//             title: 'Healthy Movie Snacks',
//             icon: Icons.cake,
//             items: ['Cake', 'Ice Cream', 'Cookies'],
//             image: Assets.badEatingHabitsYouCanBreakfor,
//             onTap: () => _openDetailsPage(context, 'Dessert Details'),
//           ),
//           MealSectionCard(
//             title: 'How to Eat Healthy and Avoid Fad Diets',
//             icon: Icons.local_cafe,
//             items: ['Coffee', 'Tea', 'Juice'],
//             image: Assets.badEatingHabitsYouCanBreakforGood,
//             onTap: () => _openDetailsPage(context, 'Drinks Details'),
//           ),
//         ],
//       ),
//     );
//   }

//   void _openDetailsPage(BuildContext context, String title) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => DetailsPage(title: title),
//       ),
//     );
//   }
// }

// // إضافة واجهة MealSectionCard
// class MealSectionCard extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   final List<String> items;
//   final String image;
//   final VoidCallback onTap;

//   MealSectionCard({
//     required this.title,
//     required this.icon,
//     required this.items,
//     required this.image,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(16),
//       child: InkWell(
//         onTap: onTap,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               image,
//               height: 150,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//             ListTile(
//               leading: Icon(icon),
//               title: Text(
//                 title,
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Divider(),
//             ExpansionTile(
//               title: Text('Items'),
//               children: [
//                 for (String item in items)
//                   ListTile(
//                     title: Text(item),
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DetailsPage extends StatelessWidget {
//   final String title;

//   DetailsPage({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Text('Details for $title'),
//       ),
//     );
//   }
// }
