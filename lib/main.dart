// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../app/ui/main_screen.dart';
import 'core/theme/theme.dart';
import 'data/moor/moor_repository.dart';
import 'data/repository.dart';

import '../app/network/recipe_service.dart';
import '../app/network/service_interface.dart';

Future<void> main() async {
  // Call _setupLogging()
  _setupLogging();
  WidgetsFlutterBinding.ensureInitialized();
  final repository = MoorRepository();
  await repository.init();
  runApp(RecipeApp(repository: repository));
}
// Add _setupLogging()
void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    if (kDebugMode) {
      print('${rec.level.name}: ${rec.time}: ${rec.message}');
    }
  });
}

class RecipeApp extends StatefulWidget {
  final Repository? repository;
  const RecipeApp({Key? key, required this.repository}) : super(key: key);

  @override
  State<RecipeApp> createState() => _RecipeAppState();
}

class _RecipeAppState extends State<RecipeApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Repository>(
          lazy: false,
          create: (_) => widget.repository!,
          dispose: (_, Repository repository) => repository.close(),
        ),
        Provider<ServiceInterface>(
          create: (_) =>
              RecipeService
                  .create(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        title: AppTheme.ktitle,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: const MainScreen(),
      ),
    );
  }
}

// ThemeData(
// brightness: Brightness.light,
// primaryColor: Colors.white,
// primarySwatch: Colors.blue,
// visualDensity: VisualDensity.adaptivePlatformDensity,
// ),


