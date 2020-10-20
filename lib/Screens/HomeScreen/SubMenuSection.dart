import 'package:amazon_clone/Components/submenue.dart';
import 'package:flutter/material.dart';

class SubMenuSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 85,
        color: Color(0xffFCEFBF),
        child: ListView(
          padding: EdgeInsets.only(left: 10, right: 10),
          scrollDirection: Axis.horizontal,
          children: [
            SubmenueSection(
              iconimage: "assets/submenu/payment.png",
              title: "Amazon Pay",
              onTap: () {},
              isbigimage: true,
            ),
            SizedBox(
              width: 20,
            ),
            SubmenueSection(
                title: "Rewards",
                onTap: () {},
                isbanner: true,
                isRewards: true,
                isRewardcolor: true,
                isnotImage: true,
                bannertitle: "DAILY"),
            SizedBox(
              width: 20,
            ),
            SubmenueSection(
              iconimage: "assets/submenu/qr-code.png",
              title: "Scan UPI QR",
              onTap: () {},
            ),
            SizedBox(
              width: 20,
            ),
            SubmenueSection(
                iconimage: "assets/submenu/bill.png",
                title: "Pay Bills",
                isbanner: true,
                isRewardcolor: false,
                bannertitle: "OFFER"),
            SizedBox(
              width: 20,
            ),
            SubmenueSection(
                iconimage: "assets/submenu/bhim.png",
                title: "Send Money",
                onTap: () {},
                isbanner: true,
                isRewardcolor: false,
                bannertitle: "OFFER"),
          ],
        ),
      ),
    );
  }
}
