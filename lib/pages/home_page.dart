import 'package:allocal/pages/food_page.dart';
import 'package:allocal/components/my_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/my_food_tile.dart';
import '../components/my_current_location.dart';
import '../pages/my_drawer.dart';
import '../components/my_silver_app_bar.dart';
import '../components/my_description_box.dart';
import '../models/food.dart';
import '../models/restaurant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  // Tab controller for switching between food categories
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Filter out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // Return list of food widgets in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      // Get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      // Return a ListView for the category
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // Get individual food
          final food = categoryMenu[index];

          // Return food tile UI
          return FoodTile(
            food: food, 
            onTap: () => Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25, 
                  endIndent: 25, 
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // My current location
                const MyCurrentLocation(),

                // Description box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
