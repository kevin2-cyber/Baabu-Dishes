// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import '../core/theme/theme.dart';
import 'myrecipes/my_recipes_list.dart';
import 'recipes/recipe_list.dart';
import 'shopping/shopping_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> pageList = <Widget>[];
  // Add index key
  static const String prefSelectedIndexKey = 'selectedIndex';

  void saveCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(prefSelectedIndexKey, _selectedIndex);
  }

  void getCurrentIndex() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(prefSelectedIndexKey)) {
      setState(() {
        final index = prefs.getInt(prefSelectedIndexKey);
        if (index != null) {
          _selectedIndex = index;
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    pageList.add(const RecipeList());
    pageList.add(const MyRecipesList());
    pageList.add(const ShoppingList());
    // Call getCurrentIndex
    getCurrentIndex();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Call saveCurrentIndex
    saveCurrentIndex();
  }

  @override
  Widget build(BuildContext context) {
    String title;
    switch (_selectedIndex) {
      case 0:
        title = 'Recipes';
        break;
      case 1:
        title = 'Bookmarks';
        break;
      case 2:
        title = 'Groceries';
        break;
      default:
        title = 'Recipes';
        break;
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/icon_recipe.svg',
                  color: _selectedIndex == 0 ? AppTheme.green : Colors.grey,
                  semanticsLabel: 'Recipes'),
              label: 'Recipes'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/icon_bookmarks.svg',
                  color: _selectedIndex == 1 ? AppTheme.green : Colors.grey,
                  semanticsLabel: 'Bookmarks'),
              label: 'Bookmarks'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/icon_shopping_list.svg',
                  color: _selectedIndex == 2 ? AppTheme.green : Colors.grey,
                  semanticsLabel: 'Groceries'),
              label: 'Groceries'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppTheme.green,
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,

          systemNavigationBarDividerColor: Colors.white,
          //Navigation bar divider color
          systemNavigationBarIconBrightness:
              Brightness.light, //navigation bar icon
        ),
        title: Text(
          title,
          style: AppTheme.darkTextTheme.headline1,
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: pageList,
      ),
    );
  }
}
