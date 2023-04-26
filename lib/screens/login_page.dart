import 'package:bugsmash/screens/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../styles/text_styles.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  LoginPage({super.key});

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
              padding: const EdgeInsets.only(top: 50, left: 20),
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
                        "  Back to Get Started",
                        style: TextStyles.subheadingstyle2,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Login..",
                      style: TextStyles.headlineStyle1,
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 320,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1.5, color: primary)),
                        child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyles.subheadingstyle3,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            controller: email)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 320,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1.5, color: primary)),
                        child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyles.subheadingstyle3,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            controller: password)),
                  ),
                  const SizedBox(
                    height: 35,
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
                              MaterialPageRoute(builder: (context) => Otp()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Sign in",
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
                  const SizedBox(
                    height: 50,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Or", style: TextStyles.subheadingstyle8),
                  ),
                  const SizedBox(
                    height: 50,
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
                              MaterialPageRoute(builder: (context) => Otp()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Sign in via Google",
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
