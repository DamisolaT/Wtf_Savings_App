import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtf_savings_app/features/home/bloc/home_bloc.dart';

class HideTodoSheet extends StatelessWidget {
  const HideTodoSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/piggyvest.png",
          height: 90,
          width: 90,
          ),
          SizedBox(height: 24,),
          Text("Hide-To-do-List",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24
          ),
          ),
          SizedBox(height: 24,),
          Text("Temporarily hide all to-do list till tomorrow"),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Divider(),
          ),

          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Remind me later"),
                        content: Text("Are you sure you want to hide your todo list till tomorrow"),
                        actions: [
                          TextButton(
                              onPressed: (){
                                //Navigator.pop(context);
                                Navigator.pop(context);
                                context.read<HomeBloc>().hideTodo();
                              },
                              child: Text("Yes, remove it")
                          ),
                          TextButton(
                              onPressed: (){
                               // Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: Text("Close"))
                        ],
                      );
                    }
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                side: BorderSide(color: Colors.red.shade700,
                width: 2)
              ),
              child: Text("Hide To-Do List",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),)
          )
          
        ],

      ),
    );
  }
}

