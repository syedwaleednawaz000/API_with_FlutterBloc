import 'dart:developer';

import 'package:blocapiyt/data/models/post_model.dart';
import 'package:blocapiyt/data/repositories/post_repository.dart';
import 'package:blocapiyt/logic/cubits/post_cubit/post_cubit.dart';
import 'package:blocapiyt/presentation/screens/home_screen.dart';
import 'package:blocapiyt/presentation/screens/suggestionscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SuggestionScreen(),
      ),
    );
  }
}
