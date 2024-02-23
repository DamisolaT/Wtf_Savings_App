
import 'package:flutter/material.dart';
import 'package:wtf_savings_app/features/savings/widgets/strict_savings_item.dart';

class FlexibleSavingsSection  extends StatelessWidget {
  const FlexibleSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Flexible Savings",
        style: TextStyle(
          fontSize: 16,
            color: Colors.black38,

        ),
      ),
      SizedBox(
        height: 250,
        child:
        GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            shrinkWrap: true,
          children: [
            StrictSavingsItem(
                textOnButton:"\$100",
                title: "Flex Dollar",
                subtitle: "Save in dollars earn interest",
                color: Colors.black87,
              backgroundColor: Colors.blueGrey,
            ),
            StrictSavingsItem(
                textOnButton:"NGN 4000",
                title: "Flex Naira",
                subtitle: "Your emergency funds with interest",
                color: Colors.pinkAccent.shade400,
              backgroundColor: Colors.pink.shade300,
            )
          ],
        ),
      )
  ],
    ),
    );
  }
}
