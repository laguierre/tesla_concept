import 'package:car/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width * 0.13;
    var height = size.height * 0.2;
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
          Container(
            alignment: Alignment.center,
            height: size.height * 0.6,
            width: size.width * 0.70,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: SizedBox(
                      width: size.width * 0.45 + 200,
                      height: size.width * 0.45 + 150,
                      child: const CustomRipple()),
                ),
                Positioned.fill(
                  child: Center(
                    child: Container(
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: kPrimaryColor.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          shape: BoxShape.circle, gradient: kStatsGradient),
                    ),
                  ),
                ),
                Positioned(
                  left: size.width * 0.055,
                  top: size.height * 0.05,
                  child: _ChargerCircles(size: size),
                ),
                Positioned(
                  right: size.width * 0.055,
                  top: size.height * 0.05,
                  child: _ChargerCircles(size: size),
                ),
                Positioned(
                  left: size.width * 0.055,
                  bottom: size.height * 0.05,
                  child: _ChargerCircles(size: size),
                ),
                Positioned(
                  right: size.width * 0.055,
                  bottom: size.height * 0.05,
                  child: _ChargerCircles(size: size),
                ),
                SizedBox(
                  height: size.height * 0.65,
                  child: Image.asset(
                    'lib/assets/images/bird_view_tesla.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 20),
                  child: Text('Battery Health')),
              LinearPercentIndicator(
                curve: Curves.decelerate,
                animation: true,
                animationDuration: 1200,
                percent: batteryCharge / 100,
                progressColor: kPrimaryColor,
                backgroundColor: kProgressBackGroundColor,
                lineHeight: 25,
                center: Text(batteryCharge.toString() + '%'),
                barRadius: const Radius.circular(10),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Text('Sensors')),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalPercentIndicator(
                  label: 'Motor',
                  width: width,
                  height: height,
                  percent: motorPercent / 100),
              VerticalPercentIndicator(
                  label: 'Battery Temp',
                  width: width,
                  height: height,
                  percent: tempBatteryPercent / 100),
              VerticalPercentIndicator(
                  label: 'Brakers',
                  width: width,
                  height: height,
                  percent: brakePercent / 100),
              VerticalPercentIndicator(
                  label: 'Suspensions',
                  width: width,
                  height: height,
                  percent: suspensionPercent / 100),
            ],
          ),
          const SizedBox(height: 50)
        ],
      )),
    );
  }
}

class _ChargerCircles extends StatelessWidget {
  const _ChargerCircles({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.12,
      width: size.height * 0.12,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomRipple(),
          SizedBox(
            height: 60,
            width: 60,
            child: CustomRipple(),
          )
        ],
      ),
    );
  }
}

class SettingsBarStat extends StatelessWidget {
  const SettingsBarStat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 15),
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
            const SizedBox(width: 15),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
          child: Row(
            children: [
              const SizedBox(width: 10),
              const Text('Overall Health',
                  style: TextStyle(
                      letterSpacing: 1, fontSize: 15, color: Colors.grey)),
              const Spacer(),
              RawMaterialButton(
                onPressed: () {
                },
                elevation: 2.0,
                fillColor: kPrimaryColor,
                padding: EdgeInsets.all(12.0),
                shape: CircleBorder(),
                child: const Icon(
                  Icons.refresh_rounded,
                  size: 25.0, color: Colors.white,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class VerticalPercentIndicator extends StatefulWidget {
  VerticalPercentIndicator({
    Key? key,
    required this.height,
    required this.width,
    required this.percent,
    required this.label,
  }) : super(key: key);

  final double height, width, percent;
  String label;

  @override
  State<VerticalPercentIndicator> createState() => _VerticalPercentIndicatorState();
}

class _VerticalPercentIndicatorState extends State<VerticalPercentIndicator>with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2500));
    _animation = Tween<double>(begin: 0.1, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
    super.initState();
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
    return Column(
      children: [
        Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
              color: kBottomAppBarColor,
              borderRadius: BorderRadius.circular(15)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                  decoration: const BoxDecoration(
                      gradient: kStatsGradient,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                  height: widget.height * widget.percent * _animation.value),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(widget.label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}

class CustomRipple extends StatefulWidget {
  const CustomRipple({Key? key}) : super(key: key);

  @override
  _CustomRippleState createState() => _CustomRippleState();
}

class _CustomRippleState extends State<CustomRipple>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _animation = Tween<double>(begin: 0.4, end: 0.8).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat();
    super.initState();
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
    return ScaleTransition(
      scale: _animation,
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 1,
                offset: const Offset(0, 1), // changes position of shadow
              ),
            ],
            border: Border.all(color: kPrimaryColor, width: 4),
            shape: BoxShape.circle),
      ),
    );
  }
}
