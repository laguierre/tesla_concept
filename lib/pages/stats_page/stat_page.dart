import 'package:car/constants.dart';
import 'package:flutter/material.dart';

import 'chart_widget.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeHeightContainers = size.height * 0.32;
    const double paddingContainers = 20.0;
    return Container(
      alignment: Alignment.topCenter,
      height: size.height,
      width: double.infinity,
      decoration: const BoxDecoration(gradient: kBackGroundGradient),
      child: SingleChildScrollView(
          child: Column(
        children: [
          const TopBarStat(),
          const SizedBox(height: 30),
          Image.asset('lib/assets/images/stats.png'),
          Padding(
            padding: const EdgeInsets.only(left: paddingContainers, right: paddingContainers, top: 15),
            child: Column(
              children: [
                LineChartChargeHistory(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: sizeHeightContainers,
                      width: size.width * 0.32,
                      decoration: BoxDecoration(
                          color: kBottomAppBarColor,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    const SizedBox(width: 20),
                    Column(mainAxisAlignment: MainAxisAlignment.start,children: [

                      Container(
                        height: sizeHeightContainers * 0.60,
                        width: size.width - (size.width * 0.32 + 20 + 2 * paddingContainers),
                        decoration: BoxDecoration(
                            color: kBottomAppBarColor,
                            borderRadius: BorderRadius.circular(kCircularBorder)),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: sizeHeightContainers - (sizeHeightContainers * 0.60 + 20),
                        width: size.width - (size.width * 0.32 + 20 + 2 * paddingContainers),
                        decoration: BoxDecoration(
                            color: kBottomAppBarColor,
                            borderRadius: BorderRadius.circular(kCircularBorder)),
                      ),
                    ],)
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class TopBarStat extends StatelessWidget {
  const TopBarStat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 30, top: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 40,
              )),
          const Text('Stats',
              style: TextStyle(
                  letterSpacing: 1, fontSize: 20, color: Colors.grey)),
          const Spacer(),
          const Text('MODEL X',
              style: TextStyle(
                  letterSpacing: 1, fontSize: 20, color: Colors.white)),
        ],
      ),
    );
  }
}
