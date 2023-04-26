import './login_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './email_signup.dart';
import 'package:flutter/material.dart';
import '../styles/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.only(top: 50, left: 23),
          child: Column(children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "BugSmash",
                style: TextStyles.headlineStyle1,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: const [
                Text(
                  "Review Apps ",
                  style: TextStyles.subheadingstyle1,
                ),
                Text(
                  "20x ",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "OpenSans-Bold",
                      fontWeight: FontWeight.w900),
                ),
                Text("Faster!", style: TextStyles.subheadingstyle1),
              ],
            ),
            const SizedBox(
              height: 116,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Let's get started",
                style: TextStyles.headlineStyle1,
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 325,
                height: 42,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(primary),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Sign up via Google",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "OpenSans-Regular",
                              color: Colors.white)),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: primary),
                ),
                width: 325,
                height: 42,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 255, 255, 255)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmailSignup()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign up via Email",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: "OpenSans",
                                color: primary)),
                        Icon(
                          Icons.arrow_forward,
                          color: primary,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 76),
            Row(
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyles.subheadingstyle1,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: const Text(
                    "Login here",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline,
                        fontFamily: "OpenSans-Bold"),
                  ),
                )
              ],
            ),
          ]),
        ),
      ],
    ));
  }
}
