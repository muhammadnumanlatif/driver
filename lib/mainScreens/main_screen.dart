import 'package:driver/tabPages/earning_tab.dart';
import 'package:driver/tabPages/home_tab.dart';
import 'package:driver/tabPages/profile_tab.dart';
import 'package:driver/tabPages/ratings_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

  TabController? tabController;
  int selectedIndex=0;

  onItemClicked(int index){
    setState(() {
      selectedIndex=index;
      tabController!.index=selectedIndex;
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children:[
          HomeTabPage(),
          EarningTabPage(),
          RatingTabPage(),
          ProfileTabHome(),
        ],
      ),

      bottomNavigationBar: NavigationBar(
        destinations:const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.credit_card), label: "Earnings"),
          NavigationDestination(icon: Icon(Icons.star), label: "Ratings"),
          NavigationDestination(icon: Icon(Icons.person), label: "Account"),

        ],
        backgroundColor: Colors.black12,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: selectedIndex,
        onDestinationSelected: onItemClicked,
      ),
    );
  }
}
