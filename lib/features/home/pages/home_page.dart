

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtf_savings_app/features/account/pages/account_view.dart';
import 'package:wtf_savings_app/features/home/bloc/home_bloc.dart';
import 'package:wtf_savings_app/features/home/bloc/home_state.dart';
import 'package:wtf_savings_app/features/invest/pages/invest_view.dart';
import 'package:wtf_savings_app/features/savings/pages/savings_view.dart';

import 'home_view.dart';

class HomePage extends StatefulWidget{

  static route()=> MaterialPageRoute(builder: (context)=>HomePage(),);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var  listOfPages = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AccountView()
  ];
  @override
  void iniState(){
    super.initState();
    context.read<HomeBloc>().loadUserDetails();
  }

  //var  selectedIndex = 0;

  @override
  void initState(){
    super.initState();
    context.read<HomeBloc>().loadUserDetails();

  }

  @override
  Widget build(BuildContext context){
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;
    var selectedIndex = homeState.tabIndex;
    return Scaffold(
      body: IndexedStack(
        children: listOfPages,
        index: selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value){
         // setState(()
          homeBloc.updateTabIndex(value);
        },

        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: "Home"
          ),

          BottomNavigationBarItem(
              icon:Icon(Icons.savings),
                  label: "Savings"
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.rocket_launch),
            label: "Invest"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.account_circle),
          label: "Account"),

        ],
      ),
    );

  }
}