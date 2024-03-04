import 'package:flutter/material.dart';
import 'package:wtf_savings_app/features/savings/widgets/wallet_item.dart';

class ChooseAWalletSection extends StatelessWidget {
  const ChooseAWalletSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Choose a wallet to Top-up",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey
          ),
          ),
          Wrap(
            children: [
              WalletItem(
                title: "PiggyBank",
                balance: "2000",
              ),
              WalletItem(
                title: "PiggyFlex",
                balance: "1500",
              ),
              
            ],
          ),
        ],
      ),

    );
  }
}

