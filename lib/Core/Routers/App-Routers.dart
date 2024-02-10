import 'package:diabestapp/Core/Widgets/custom_bottom_navigation.dart';
import 'package:diabestapp/Features/Eating/presentation/view/eating_view.dart';
import 'package:diabestapp/Features/Eating/presentation/view/meal_section.dart';
import 'package:diabestapp/Features/Eating/presentation/widget/create_your_meal_form.dart';
import 'package:diabestapp/Features/Eating/presentation/widget/custom_meal_section.dart';
import 'package:diabestapp/Features/Home/presentatio/views/home_views.dart';
import 'package:diabestapp/Features/On-Boarding/presentation/views/on-boarding-view.dart';
import 'package:diabestapp/Features/On-Boarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/views/register_Your_info_page1.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/views/register_your_info_page3.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/views/register_your_information.dart';
import 'package:diabestapp/Features/Splash1/Presentation/Views/Splash1.dart';
import 'package:diabestapp/Features/Splash2/Presentation/views/Splash2.dart';
import 'package:diabestapp/Features/auth/Presentation/Views/Verification_password.dart';
import 'package:diabestapp/Features/auth/Presentation/Views/forget_password_view.dart';
import 'package:diabestapp/Features/auth/Presentation/Views/new_password.dart';
import 'package:diabestapp/Features/auth/Presentation/Views/sign_in.dart';
import 'package:diabestapp/Features/auth/Presentation/Views/sign_up.dart';
import 'package:diabestapp/Features/doctor/data/model/doctor_model.dart';
import 'package:diabestapp/Features/doctor/presentation/views/doctor.dart';
import 'package:diabestapp/Features/doctor/presentation/views/edit_profile.dart';
import 'package:diabestapp/Features/doctor/presentation/views/profile_doctor.dart';
import 'package:diabestapp/Features/doctors_patient/Presentation/view/description_of_doctor.dart';
import 'package:diabestapp/Features/organs/presentation/view/organs_search.dart';
import 'package:diabestapp/Features/profile/Presentation/view/edit_profile_view.dart';
import 'package:diabestapp/Features/sports/presention/view/sports_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => OnBoardingView(),
  ),
  GoRoute(
    path: '/Splash2',
    builder: (context, state) => const Splash2View(),
  ),
  GoRoute(
    path: '/OnBoarding',
    builder: (context, state) => const OnBoardingView(),
  ),
  GoRoute(
    path: "/signUp",
    builder: (context, state) => const SignUpView(),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => const SignInView(),
  ),
  GoRoute(
    path: "/forgotPassword",
    builder: (context, state) => const ForgotPasswordViews(),
  ),
  GoRoute(
    path: "/doctor",
    builder: (context, state) => DoctorView(),
  ),
  GoRoute(
    path: "/registerYourInformation",
    builder: (context, state) => const RegisterYourInformation(),
  ),
  GoRoute(
    path: "/registerYourInformationpage2",
    builder: (context, state) => const RegisterYourInformationPage2(),
  ),
  GoRoute(
    path: "/registerYourInformationpage3",
    builder: (context, state) => const RegisterYourInformationPage3(),
  ),
  GoRoute(
    path: "/home",
    builder: (context, state) => const HomeViews(),
  ),
  GoRoute(
    path: "/CustomBtnNavigation",
    builder: (context, state) => const CustomBtnNavigation(),
  ),
  GoRoute(
    path: "/editprofile",
    builder: (context, state) => const EditProfileView(),
  ),
  GoRoute(
    path: "/DescriptionsOfDoctor",
    builder: (context, state) => const DescriptionsOfDoctor(),
  ),
  GoRoute(
    path: "/eatingview",
    builder: (context, state) => const EatingView(),
  ),
  GoRoute(
    path: "/CreateYourMealForm",
    builder: (context, state) => const CreateYourMealForm(),
  ),
  GoRoute(
    path: "/MealSection",
    builder: (context, state) => const MealSection(),
  ),
  GoRoute(
    path: "/WorkoutPlanScreen",
    builder: (context, state) => WorkoutPlanScreen(),
  ),
  GoRoute(
    path: "/organsView",
    builder: (context, state) => const organsView(),
  ),
  GoRoute(
    path: "/ProfileDoctorView",
    builder: (context, state) => const ProfileDoctorView(),
  ),
  GoRoute(
    path: "/EditProfileDoctor",
    builder: (context, state) => EditProfileDoctor(),
  ),
  GoRoute(
    path: "/MyVerificationPage",
    builder: (context, state) => const MyVerificationPage(),
  ),
  GoRoute(
    path: "/CreateNewPassword",
    builder: (context, state) => CreateNewPassword(),
  ),
]);
