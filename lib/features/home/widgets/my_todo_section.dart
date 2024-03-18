

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtf_savings_app/features/home/bloc/home_bloc.dart';
import 'package:wtf_savings_app/features/home/bloc/home_state.dart';

import 'hide_todo_sheet.dart';
import 'my_todo_item.dart';

class MyTodoSection extends StatelessWidget {
  const MyTodoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;
    return homeState.hideTodo==true? Container(): Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My To-do",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black38
                ),
              ),
              TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        builder: (context){
                         return HideTodoSheet();

                        }
                        );
                  },
                  child:
                  Row(
                    children: [
                      Text
                        ("Hide",
                      style: TextStyle(
                        color: Colors.red.shade700
                      ),
                      ),
                      Icon(
                          Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.red.shade700,
                      )
                    ],
                  )
              )
            ],
          ),
          //ListView Start
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyTodoItem(
                  title: "Add Debit Card",
                  progress: 0.3,
                ),
                MyTodoItem(
                  title: "Enable Autosave",
                  progress: 0.9,
                ),
                MyTodoItem(
                  title: "Enable face id/fingerprint",
                  progress: 0,
                ),
                MyTodoItem(
                  title: "Add a Picture",
                  progress: 0,
                ),
                MyTodoItem(
                  title: "Add your BVN",
                  progress: 0,
                ),
                MyTodoItem(
                  title: "Verify your Identity",
                  progress: 0,
                ),
                MyTodoItem(
                  title: "Add your Address",
                  progress: 0,
                ),


              ],
            ),
          )
        ],
      ),

    );
  }
}

