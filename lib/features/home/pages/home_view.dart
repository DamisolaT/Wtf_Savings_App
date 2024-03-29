import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtf_savings_app/features/home/bloc/home_bloc.dart';
import 'package:wtf_savings_app/features/home/widgets/my_todo_section.dart';
import 'package:wtf_savings_app/features/home/widgets/top_savings_section.dart';
import 'package:wtf_savings_app/features/home/widgets/vetted_opportunities_section.dart';
import 'package:wtf_savings_app/features/invest/widgets/invest_details_card.dart';


import '../../savings/widgets/saving_details_card.dart';
import '../widgets/suggestions_section.dart';
import '../widgets/user_balance_card.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});



  @override
  Widget build(BuildContext context) {
    var homestate = context.watch<HomeBloc>().state;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello ${homestate.userModel?.fullName ?? "..."}",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            Text(
                "Do more with your finances",
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
        actions: [
         IconButton(
           color: Colors.blue,
             onPressed: (){},
             icon: Icon(
               Icons.account_circle,
               size: 40,
             )
         )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          UserBalanceDetails(),
          MyTodoSection(),
          TopSavingsSection(),
          SuggestionsSection(),
          VettedOpportunitiesSection(),



        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: (){
          print("FAB CLICKED");
        },
      ),
    );
  }
}

