import 'package:flutter/material.dart';

class TopSavingsSection extends StatelessWidget {
  const TopSavingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Top Savings",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black38
            ),
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text("Piggybank"),
            subtitle: Text("Auto save: Daily weekly or monthly"),
            trailing: ElevatedButton(
              onPressed: (){},
              child: Text("SAVE"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("SafeLock"),
            subtitle: Text("Lock funds to avoid temptations"),
            trailing: ElevatedButton(
              onPressed: (){},
              child: Text("LOCK"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.interests),
            title: Text("FlexNaira"),
            subtitle: Text("Your emergency funds with interest"),
            trailing: ElevatedButton(
              onPressed: (){},
              child: Text("FUND"),
            ),
          )
        ],
      ),
    );
  }
}

