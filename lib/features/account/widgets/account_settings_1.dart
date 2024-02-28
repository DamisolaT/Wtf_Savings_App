import 'package:flutter/material.dart';

import 'account_settings_item.dart';

class AccountSettings1 extends StatelessWidget {
  const AccountSettings1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          AccountSettingsItem(
            title: "Today's Rate",
            icon: Icon(Icons.percent),
          ),
          Divider(color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
              title: "My Account Settings",
              icon: Icon(Icons.settings)
          ),
          Divider(color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
              title: "Generate Account Statement",
              icon: Icon(Icons.settings)
          ),
          Divider(color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
            title: "Enable Dark Mode",
            icon: Icon(Icons.dark_mode),
            trailingIcon: Switch(
              value: false,
              onChanged: (value){},
            ),
          ),
          Divider(color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
              title: "Self Help",
              icon: Icon(Icons.info),
          ),
          Divider(color: Colors.grey.shade300,
          ),
          AccountSettingsItem(
              title: "Security",
              icon: Icon(Icons.lock)
          ),
          Divider(color: Colors.grey.shade300,
          ),

        ],
      ),
    );
  }
}

