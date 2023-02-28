import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../menu_food/menu_food_screen.dart';
import '../../screen/detail_product/detail_product_screen.dart';
import '../../screen/history/empty_screen_history.dart';
import '../../screen/profile/profile_screen.dart';
import '../../utilities/color_schema.dart';
import '../../widget/food_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delicious \nfood for you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //To add some elevation & border radius to text field need to wrap in Material
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return MenuFoodScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[100],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_sharp,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Search')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              DefaultTabController(
                length: 4,
                child: Expanded(
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: deepOrange800,
                        labelColor: deepOrange800,
                        unselectedLabelColor: grey400,
                        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: [
                          Tab(
                            text: "Food",
                          ),
                          Tab(
                            text: "Drinks",
                          ),
                          Tab(
                            text: "Snacks",
                          ),
                          Tab(
                            text: "Sauce",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "see more",
                              style:
                                  TextStyle(fontSize: 16, color: deepOrange800),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: TabBarView(clipBehavior: Clip.none, children: [
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              SizedBox(
                                width: 20,
                              ),
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              Gap(20),
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              Gap(20),
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              Gap(20),
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              Gap(20),
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              Gap(20),
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              Gap(20),
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              Gap(20),
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                              Gap(20),
                              FoodCardWidget(
                                  navigationDestination: DetailProductScreen(),
                                  image: "assets/image/food1.png",
                                  text: "Vegie tomato mix"),
                            ],
                          ),
                        ),
                      ]))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: deepOrange800,
          unselectedItemColor: grey400,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: IconButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                ),
                icon: Icon(
                  Icons.home,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Favorite",
              icon: IconButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Center(
                        child: Text('Favorite Page'),
                      );
                    },
                  ),
                ),
                icon: Icon(
                  Icons.favorite,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: IconButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileScreen();
                    },
                  ),
                ),
                icon: Icon(
                  Icons.person,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "History",
              icon: IconButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return NoHistory();
                    },
                  ),
                ),
                icon: Icon(
                  Icons.history,
                ),
              ),
            ),
          ],
        ));
  }
}
