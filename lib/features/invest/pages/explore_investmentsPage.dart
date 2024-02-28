
import 'package:flutter/material.dart';

class ExploreInvestmentsPage extends StatelessWidget {
  const ExploreInvestmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Investments"),
        centerTitle: true,
       // automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ExploreInvestmentsItem()
          
        ],
      ),
    );
  }
}

class ExploreInvestmentsItem extends StatelessWidget {
  const ExploreInvestmentsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/invest_img.png",
          height: 150,
          width: 150,),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CORPORATE DEBT NOTES SERIES XXII",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
                Text("10% return in 9 months"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 // alignment: WrapAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("\$500"),
                      Text("Per unit")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("625"),
                      Text("Investors")
                    ],
                  )
                ],)
              ],
            ),
          ),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 4)
              ),
              child: Text("Sold out"))
        ],
      ),
    );
  }
}
