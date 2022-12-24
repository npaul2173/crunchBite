import 'package:crunch_bite/common/components/Buttons/index.dart';
import 'package:crunch_bite/common/components/Dot/index.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/image/welcome_bg.png'))),
            child: Container(
              padding: const EdgeInsets.only(bottom: 50, left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/logo_white.png',
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    "Crunchy",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  const SubSection(),
                  const Divider(
                    thickness: 1.5,
                    color: Colors.white38,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      "Order from top restuarants",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const PrimaryButton(title: "Get Started")
                ],
              ),
            )));
  }
}

class SubSection extends StatelessWidget {
  const SubSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: const [
          Text(
            "Food",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          Dot(),
          Text(
            "Instamart",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          Dot(),
          Text(
            "Genie",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
