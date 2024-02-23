import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavingDetailsCard extends StatelessWidget {
  const SavingDetailsCard({
    super.key,

    required this.topRightWidget,
    required this.balance,
  });


  final Widget topRightWidget;
  final String balance;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16.0)
      ),
      padding: EdgeInsets.all(16.0),
      height: 160,
      child: Stack(
        children: [
          ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.add),
              label: Text("Quick save"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 8,
                  ),
                  backgroundColor: Colors.yellow.shade800,
                  foregroundColor: Colors.white
              )
          ),
          Positioned(
            top: 0,
            right: 0,
            //we created a field widgets at the top and replace with these,
              // there are codes  here replaced with these words

            child: topRightWidget
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text("My savings"),
                      Text(
                         balance,
                         style: TextStyle(
                           fontWeight: FontWeight.w900,
                           fontSize: 20
                    ),
                )
              ],
         )
    )
    ],
      ),
    );
   }
  }
