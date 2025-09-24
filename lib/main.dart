// lib/main.dart (Fixed cardTheme by using non-nullable Color)
import 'package:flutter/material.dart';
import 'screens/page1_welcome.dart';
import 'screens/page2_sign_up.dart';
import 'screens/page3_login.dart';
import 'screens/page4_forgot_password.dart';
import 'screens/page5_add_profile.dart';
import 'screens/page6_select_language.dart';
import 'screens/page7_role_selection.dart';
import 'screens/page8_user_home.dart';
import 'screens/page9_issue_reporting.dart';
import 'screens/page10_my_reports.dart';
import 'screens/page11_employment.dart';
import 'screens/page12_leaderboard.dart';
import 'screens/page13_user_profile.dart';
import 'screens/page14_admin_home.dart';
import 'screens/page15_report_management.dart';
import 'screens/page16_employee_management_list.dart';
import 'screens/page17_employee_management_detail.dart';
import 'screens/page18_department_management.dart';
import 'screens/page19_admin_profile.dart';
import 'screens/page20_analytics_general.dart';
import 'screens/page21_analytics_departments.dart';
import 'screens/page22_analytics_department_specific.dart';
import 'screens/page23_analytics_issues.dart';

void main() {
  runApp(const UrbanEyeApp());
}

class UrbanEyeApp extends StatelessWidget {
  const UrbanEyeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Urban Eye',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyMedium: const TextStyle(color: Colors.black),
          headlineLarge: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
          headlineMedium: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          labelMedium: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.grey[200],
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            side: BorderSide.none,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 16),
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey[300]!)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
        ),
        cardTheme: CardThemeData(
          color: Colors.grey[200]!, // Fixed: Added ! to make it non-nullable
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const Page1Welcome(),
        '/login': (context) => const Page3Login(),
        '/sign_up': (context) => const Page2SignUp(),
        '/forgot_password': (context) => const Page4ForgotPassword(),
        '/add_profile': (context) => const Page5AddProfile(),
        '/select_language': (context) => const Page6SelectLanguage(),
        '/role_selection': (context) => const Page7RoleSelection(),
        '/user_home': (context) => const Page8UserHome(),
        '/issue_reporting': (context) => const Page9IssueReporting(),
        '/my_reports': (context) => const Page10MyReports(),
        '/employment': (context) => const Page11Employment(),
        '/leaderboard': (context) => const Page12Leaderboard(),
        '/user_profile': (context) => const Page13UserProfile(),
        '/admin_home': (context) => const Page14AdminHome(),
        '/report_management': (context) => const Page15ReportManagement(),
        '/employee_management_list': (context) => const Page16EmployeeManagementList(),
        '/employee_management_detail': (context) => const Page17EmployeeManagementDetail(),
        '/department_management': (context) => const Page18DepartmentManagement(),
        '/admin_profile': (context) => const Page19AdminProfile(),
        '/analytics_general': (context) => const Page20AnalyticsGeneral(),
        '/analytics_departments': (context) => const Page21AnalyticsDepartments(),
        '/analytics_department_specific': (context) => const Page22AnalyticsDepartmentSpecific(),
        '/analytics_issues': (context) => const Page23AnalyticsIssues(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}