import 'package:flutter/material.dart';import 'package:flutter_easyloading/flutter_easyloading.dart';import 'package:get/get.dart';import 'package:firebase_core/firebase_core.dart';// import 'package:nb_solutions/controllers/analytic_controller.dart';import 'package:nb_solutions/firebase_options.dart';import 'screens/auth_ui/splash_screen.dart';Future<void> main() async {  WidgetsFlutterBinding.ensureInitialized();  await Firebase.initializeApp(    options: DefaultFirebaseOptions.currentPlatform,  );  // await AnalyticsEngine.init();  runApp(const MyApp());}class MyApp extends StatelessWidget {  const MyApp({super.key});  @override  Widget build(BuildContext context) {    return GetMaterialApp(      debugShowCheckedModeBanner: false,      title: 'Flutter Demo',      theme: ThemeData(        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),        useMaterial3: true,      ),      home: const SplashScreen(),      builder: EasyLoading.init(),    );  }}