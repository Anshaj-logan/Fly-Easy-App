import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:fly_easy/utils/app_info_list.dart';
import 'package:fly_easy/utils/app_layout.dart';
import 'package:fly_easy/utils/app_styles.dart';
import 'package:fly_easy/widgets/column_layout.dart';
import 'package:fly_easy/widgets/ticket_tabs.dart';
import 'package:fly_easy/widgets/ticket_view.dart';
import 'package:gap/gap.dart';

import '../widgets/layout_builder.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headLineStyle1,
            ),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getWidth(20)),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "5221478566",
                        secondText: "Passport",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilder(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "0055 444 77147",
                        secondText: "Number of E-ticket",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "B2SG28",
                        secondText: "Booking code",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilder(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "images/visa.png",
                                scale: 11,
                              ),
                              Text(
                                " *** 2462",
                                style: Styles.headLineStyle3,
                              )
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            'Payment method',
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      AppColumnLayout(
                        firstText: "\$249.99",
                        secondText: "Price",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*
            barcode
             */
            SizedBox(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getWidth(21)),
                      bottomLeft: Radius.circular(AppLayout.getWidth(21)))),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20),
                  bottom: AppLayout.getHeight(20)),
              margin: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                  right: AppLayout.getHeight(15)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                      barcode: Barcode.code128()),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}
