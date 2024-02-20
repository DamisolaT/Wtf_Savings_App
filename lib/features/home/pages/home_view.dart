import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wtf_savings_app/features/home/widgets/my_todo_section.dart';
import 'package:wtf_savings_app/features/home/widgets/top_savings_section.dart';


import '../widgets/saving_details_card.dart';
import '../widgets/suggestions_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Damisola",
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
          SavingDetailsCard(),
          MyTodoSection(),
          TopSavingsSection(),
          SuggestionsSection()

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
