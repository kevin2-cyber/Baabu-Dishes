import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:modern_recipe_app/app/ui/main_screen.dart';
import '../app/network/recipe_service.dart';
import '../app/network/service_interface.dart';
import '../data/moor/moor_repository.dart';
import '../data/repository.dart';
import 'package:provider/provider.dart';
import '../core/theme/theme.dart';

Future<void> main() async {
  _setupLogging();
  WidgetsFlutterBinding.ensureInitialized();
  final repository = MoorRepository();
  await repository.init();
  runApp(RecipeApp(repository: repository));
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    if (kDebugMode) {
      print('${rec.level.name} : ${rec.time} : ${rec.message}');
    }
  });
}

class RecipeApp extends StatelessWidget {
  final Repository repository;
  const RecipeApp({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Repository>(
          lazy: false,
          create: (_) => repository,
          dispose: (_, Repository repository) => repository.close(),
        ),
        Provider<ServiceInterface>(
          create: (_) =>
          RecipeService.create(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        title: AppTheme.ktitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: AppTheme.kdarkThemeTextColor,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const MainScreen(),
      ),
    );
  }
}



