import 'package:car/constants.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({Key? key}) : super(key: key);

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
          children: [
            const TopBarStat(),
            const SizedBox(height: 30),
            Image.asset('lib/assets/images/stats.png'),
          ],
        )
      ),
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
