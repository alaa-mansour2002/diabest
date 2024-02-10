import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:flutter/material.dart';

class WorkoutPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Workout Plan'),
      ),
      body: ListView(
        children: [
         const Padding(
            padding:  EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
        const  CardItem(imagePath: "Assets/Images/Hiit.jpg", title: 'Hllt'),
         const CardItem(imagePath: "Assets/Images/yoga.jpg", title: 'Yoga'),
         const CardItem(imagePath: "Assets/Images/pilates.jpg", title: 'Pilates'),
         const CardItem(imagePath: "Assets/Images/bands.jpg", title: 'BANDS'),
         const CardItem(imagePath: "Assets/Images/meditation.jpg", title: 'Meditation'),
          AfterCardsContent(),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const CardItem({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {
          // Handle card press
        },
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 320, 
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AfterCardsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     const   Padding(
          padding:  EdgeInsets.all(16.0),
          child: Text(
            'Most Popular',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
        ), 
        Row(
          children: [
            GestureDetector(
              onTap: () {
                // Handle image tap, navigate to new page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
              },
              child: Image.asset(
                "Assets/Images/Football.jpg",
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15,),
            Text("Football",style: CustomTextStyles.lohit500style18,),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                // Handle image tap, navigate to new page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
              },
              child: Image.asset(
                "Assets/Images/basketball2.jpg",
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15,),
            Text("Basketball",style: CustomTextStyles.lohit500style18,),
          ],
        ),
         ],
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Detail Screen'),
      ),
      body:const Center(
        child: Text('This is the detail screen.'),
      ),
    );
  }
}