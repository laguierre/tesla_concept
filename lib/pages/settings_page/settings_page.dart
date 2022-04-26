import 'package:car/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topCenter,
      height: size.height,
      width: double.infinity,
      decoration: const BoxDecoration(gradient: kBackGroundGradient),
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SettingsBarStat(),
          Image.asset(
            'lib/assets/images/bird_view_tesla.png',
            fit: BoxFit.contain,
          ),
          const Text('Battery Health'),
          LinearPercentIndicator(


            curve: Curves.decelerate,
            animation: true,
            radius: size.width * 0.2,
            animationDuration: 1200,
            percent: batteryCharge/100,
            lineWidth: 15,
            progressColor: kPrimaryColor,
            backgroundColor: kProgressBackGroundColor,
            circularStrokeCap: CircularStrokeCap.round



            lineHeight: 20,
            percent: batteryCharge/100,
            backgroundColor: kBottomAppBarColor,
            progressColor: kPrimaryColor,
          ),
          SizedBox(height: 10),
        ],
      )),
    );
  }
}

class SettingsBarStat extends StatelessWidget {
  const SettingsBarStat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 30, top: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 40,
                  )),
              const Text('Diagnostic',
                  style: TextStyle(
                      letterSpacing: 1, fontSize: 20, color: Colors.grey)),
              const Spacer(),
              const Text('MODEL X',
                  style: TextStyle(
                      letterSpacing: 1, fontSize: 20, color: Colors.white)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                const Text('Overall Health',
                    style: TextStyle(
                        letterSpacing: 1, fontSize: 15, color: Colors.grey)),
                const Spacer(),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: kPrimaryColor,
                  padding: EdgeInsets.all(12.0),
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.refresh_rounded,
                    size: 25.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
