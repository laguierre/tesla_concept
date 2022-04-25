import 'package:badges/badges.dart';
import 'package:car/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: kBackGroundGradient),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 15),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_rounded,
                      color: kPrimaryColor,
                      size: 40,
                    )),
                const Spacer(),
                Badge(
                  badgeColor: kPrimaryColor,
                  badgeContent: const Text('1'),
                  child: Container(
                    alignment: Alignment.ce
                    margin: const EdgeInsets.only(left: 8, bottom: 6),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.white10, shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_rounded,
                          color: kBottomAppBarColor,
                          size: 40,
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
