import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/Home/presentatio/views/home_views.dart';
import 'package:diabestapp/Features/contact_us/Presentation/views/contact_us.dart';
import 'package:diabestapp/Features/doctors_patient/Presentation/view/doctor_patient.dart';
import 'package:diabestapp/Features/my_watch/presentation/views/my_watch.dart';
import 'package:diabestapp/Features/profile/Presentation/view/profile_view.dart';
import 'package:flutter/material.dart';

class CustomBtnNavigation extends StatefulWidget {
  const CustomBtnNavigation({super.key});

  @override
  State<CustomBtnNavigation> createState() => _CustomBtnNavigationState();
}

class _CustomBtnNavigationState extends State<CustomBtnNavigation> {
  int selectedIndex = 0;
  List widgetPages = [
    const HomeViews(),
    const DoctorPatientView(),
    const MyWatchView(),
     const ContactUsView(),
     const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor:AppColors.white,
      bottomNavigationBar:  BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            elevation: 0,
            selectedItemColor: AppColors.primarycolor,
            unselectedItemColor: AppColors.black1,
            iconSize: 35,
            selectedFontSize: 20,
            unselectedFontSize: 20,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.medical_services),
                label: 'Doctor',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.watch),
                label: 'Diabest',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone_sharp),
                label: 'Contact Us',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
          body: widgetPages[selectedIndex],
        );
        
  }
}