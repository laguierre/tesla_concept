import 'package:car/constants.dart';
import 'package:car/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'chart_widget.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  bool stateSW1 = true, stateSW2 = false, stateSW3 = true;
  Color colorSW1Active = kPrimaryColor,
      colorSW1Thumb = Colors.white,
      colorSW1Track = Colors.white;
  Color colorSW2Active = kPrimaryColor,
      colorSW2Thumb = kPrimaryColor,
      colorSW2Track = Colors.white;
  Color colorSW3Active = kPrimaryColor,
      colorSW3Thumb = Colors.white,
      colorSW3Track = Colors.white;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double sizeHeightContainers = size.height * 0.32;
    const double paddingContainers = 20.0;
    double controlContainerSize = size.width * 0.32;
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
            padding: const EdgeInsets.only(
                left: paddingContainers, right: paddingContainers, top: 15),
            child: Column(
              children: [
                const LineChartChargeHistory(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      height: sizeHeightContainers,
                      width: controlContainerSize,
                      decoration: BoxDecoration(
                          gradient: kCardGradient,
                          borderRadius: BorderRadius.circular(12)),
                      child: ACCtrol(
                        width: controlContainerSize,
                        height: sizeHeightContainers,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          height: sizeHeightContainers * 0.60,
                          width: size.width -
                              (size.width * 0.32 + 20 + 2 * paddingContainers),
                          decoration: BoxDecoration(
                              //color: kBottomAppBarColor,
                              gradient: kCardGradient,
                              borderRadius:
                                  BorderRadius.circular(kCircularBorder)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.lock_rounded,
                                        color: kPrimaryColor),
                                    const SizedBox(width: 7),
                                    const Text('Doors Locked',
                                        style: TextStyle(color: Colors.grey)),
                                    const Spacer(),
                                    CupertinoSwitch(
                                        trackColor: colorSW1Track,
                                        thumbColor: colorSW1Thumb,
                                        activeColor: colorSW1Active,
                                        value: stateSW1,
                                        onChanged: (value) {
                                          stateSW1 = value;
                                          if (!stateSW1) {
                                            colorSW1Active = kPrimaryColor;
                                            colorSW1Thumb = kPrimaryColor;
                                            colorSW1Track = Colors.white;
                                          } else {
                                            colorSW1Active = kPrimaryColor;
                                            colorSW1Thumb = Colors.white;
                                            colorSW1Track = Colors.white;
                                          }
                                          setState(() {});
                                        }),
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(FontAwesomeIcons.dog,
                                        color: kPrimaryColor),
                                    const SizedBox(width: 7),
                                    const Text('Dog Mode',
                                        style: TextStyle(color: Colors.grey)),
                                    const Spacer(),
                                    CupertinoSwitch(
                                        trackColor: colorSW2Track,
                                        thumbColor: colorSW2Thumb,
                                        activeColor: colorSW2Active,
                                        value: stateSW2,
                                        onChanged: (value) {
                                          stateSW2 = value;
                                          if (!stateSW2) {
                                            colorSW2Active = kPrimaryColor;
                                            colorSW2Thumb = kPrimaryColor;
                                            colorSW2Track = Colors.white;
                                          } else {
                                            colorSW2Active = kPrimaryColor;
                                            colorSW2Thumb = Colors.white;
                                            colorSW2Track = Colors.white;
                                          }
                                          setState(() {});
                                        }),
                                  ]),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(Icons.security_rounded,
                                      color: kPrimaryColor),
                                  const SizedBox(width: 7),
                                  const Text('Sentry Mode',
                                      style: TextStyle(color: Colors.grey)),
                                  const Spacer(),
                                  CupertinoSwitch(
                                      trackColor: colorSW3Track,
                                      thumbColor: colorSW3Thumb,
                                      activeColor: colorSW3Active,
                                      value: stateSW3,
                                      onChanged: (value) {
                                        stateSW3 = value;
                                        if (!stateSW3) {
                                          colorSW3Active = kPrimaryColor;
                                          colorSW3Thumb = kPrimaryColor;
                                          colorSW3Track = Colors.white;
                                        } else {
                                          colorSW3Active = kPrimaryColor;
                                          colorSW3Thumb = Colors.white;
                                          colorSW3Track = Colors.white;
                                        }
                                        setState(() {});
                                      }),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: sizeHeightContainers -
                              (sizeHeightContainers * 0.60 + 20),
                          width: size.width -
                              (size.width * 0.32 + 20 + 2 * paddingContainers),
                          decoration: BoxDecoration(
                              gradient: kCardGradient,
                              borderRadius:
                                  BorderRadius.circular(kCircularBorder)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Text('Overall Health'),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: size.width -
                                        (size.width * 0.39 +
                                            20 +
                                            2 * paddingContainers),
                                    child: LinearPercentIndicator(
                                      curve: Curves.decelerate,
                                      animation: true,
                                      animationDuration: 1200,
                                      percent: 0.78,
                                      progressColor: kPrimaryColor,
                                      backgroundColor: kBottomAppBarColor,
                                      lineHeight: 25,
                                      barRadius: const Radius.circular(10),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_forward_ios,
                                      color: Colors.white),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 50),
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

class ACCtrol extends StatelessWidget {
  const ACCtrol({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);
  final double width, height;

  @override
  Widget build(BuildContext context) {
    double heightContainer = height * 0.65;
    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 7, bottom: 3, top: 1),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const Text('A/C Control'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SideWithCircle(height: heightContainer),
            VerticalPercentIndicator(
              showLabel: false,
              label: "",
              height: heightContainer,
              percent: 0.68,
              width: width * 0.4,
            ),
            SideWithCircle(height: heightContainer),
          ],
        ),
        SizedBox(height: 7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              FontAwesomeIcons.fan,
              size: 20,
              color: Colors.white,
            ),
            Text(
              ' 500 RPM',
              style: TextStyle(fontSize: 10),
            ),
            Spacer(),
            Icon(
              FontAwesomeIcons.temperatureFull,
              size: 20,
              color: Colors.white,
            ),
            Text(
              '25°C',
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        )
      ]),
    );
  }
}

class SideWithCircle extends StatefulWidget {
  const SideWithCircle({Key? key, required this.height}) : super(key: key);
  final double height;

  @override
  State<SideWithCircle> createState() => _SideWithCircleState();
}

class _SideWithCircleState extends State<SideWithCircle>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _animation = Tween<double>(begin: 0.4, end: 0.8).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 2,
              width: 10,
              color: Colors.grey,
            ),
            Container(
              width: 2,
              height: widget.height,
              color: Colors.grey,
            ),
            Container(
              height: 2,
              width: 10,
              color: Colors.grey,
            ),
          ],
        ),
        Positioned(
          bottom: 10 * _animation.value,
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
