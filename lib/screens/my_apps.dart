import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../styles/text_styles.dart';

class MyApps extends StatelessWidget {
  final List<String> projectName = ["VisualizR", "HealthyAlw..", "Select App"];

  MyApps({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 24.29,
            bottom: 32.83,
          ),
          child: Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset("assets/images/Group 14.svg")),
        ),
        Container(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 21),
          child: Column(children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/images/profile.png")),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "My Apps",
                  style: TextStyles.headlineStyle1,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Click on any of the app to view the reported issues to start a new review session. ',
              style: TextStyles.subheadingstyle1,
            ),
            const SizedBox(height: 35),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 340,
                  child: GridView.builder(
                      itemCount: 3,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 23,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) => index != 2
                          ? Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: primary),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 16),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: primary,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          width: 48,
                                          height: 48,
                                        )),
                                    const SizedBox(height: 25),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(projectName[index],
                                          style: TextStyles.subheadingstyle4),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("Last Reviewed: 12th June",
                                          style: TextStyles.subheadingstyle5),
                                    ),
                                  ],
                                ),
                              ))
                          : Container(
                              decoration: BoxDecoration(
                                  color: primary,
                                  border: Border.all(color: primary),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 16),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Image.asset(
                                            "assets/images/add.png")),
                                    const SizedBox(height: 25),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(projectName[index],
                                          style: TextStyles.subheadingstyle6),
                                    ),
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("to start reviewing",
                                          style: TextStyles.subheadingstyle7),
                                    ),
                                  ],
                                ),
                              ))),
                ),
              ),
            ),
          ]),
        ),
      ],
    ));
  }
}
