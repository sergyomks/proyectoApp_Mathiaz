import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:proyecto_mathiaz/data/repository/authentication_repository.dart';
import 'package:proyecto_mathiaz/my_app.dart';


Future<void> main()async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
 /* await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  */
  await GetStorage.init();
  // Inyecta el repositorio
  Get.put(AuthenticationRepository());

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}
