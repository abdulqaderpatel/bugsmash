import 'package:bugsmash/screens/my_apps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../styles/text_styles.dart';

class Otp extends StatelessWidget {
  final TextEditingController otp = TextEditingController();

  Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 36.29,
                bottom: 32.83,
              ),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: SvgPicture.asset("assets/images/Group 14.svg")),
            ),
            Container(
              padding: const EdgeInsets.only(top: 48.33, left: 21.33),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back)),
                      const Text(
                        "  Back to Sign Up",
                        style: TextStyles.subheadingstyle2,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Enter OTP",
                      style: TextStyles.headlineStyle1,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      "We have sent you a code on abcd***@gmail.com. Enter that OTP below to continue...",
                      style: TextStyles.subheadingstyle1),
                  const SizedBox(
                    height: 65,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1.5, color: primary)),
                        child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter OTP here",
                              hintStyle: TextStyles.subheadingstyle3,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            controller: otp)),
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: primary),
                      ),
                      width: 320,
                      height: 45,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromARGB(255, 126, 100, 237)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApps()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Sign Up",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "OpenSans",
                                      color: Colors.white)),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
