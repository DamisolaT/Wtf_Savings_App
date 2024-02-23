
import 'package:flutter/material.dart';

import 'strict_savings_item.dart';

class StrictSavingsSection extends StatelessWidget {
  const StrictSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Strict Savings",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black38
        ),
        ),
          //GridView for holding savings categories
          SizedBox(
            height: 370,
            child: GridView.count(
                crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                StrictSavingsItem(
                  title: "PiggyBank",
                  subtitle: "Automatic daily,weekly and monthly withdrawal",
                  color: Colors.blue,
                  textOnButton: "SETUP",
                  backgroundColor: Colors.lightBlueAccent,
                ),
                StrictSavingsItem(textOnButton: "LOCK MONEY",
                    title: "SafeLock",
                    subtitle: "Lock funds to avoid temptation",
                    color: Colors.lightBlue,
                  backgroundColor: Colors.blue,
                ),
                StrictSavingsItem(
                    textOnButton: "NEW GOALS",
                    title: "Target Savings",
                    subtitle: "Smash your savings goal faster",
                    color: Colors.grey.shade600,
                  backgroundColor: Colors.grey,
                ),
                StrictSavingsItem(
                    textOnButton: "ADD MONEY",
                    title: "HouseMoney",
                    subtitle: "Save for your housing",
                    color: Colors.deepOrange.shade400,
                backgroundColor: Colors.orange,)

              ],
                ),
          )
        ],
      ),
    );
  }
}

