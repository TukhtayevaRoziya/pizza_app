import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app/app.dart';
import 'package:pizza_app/package/user_repository/lib/src/firebase_user_repo.dart';
// import 'package:pizza_app/package/user_repository/lib/src/user_repo.dart';
import 'package:pizza_app/simple_bloc_observer.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}
