import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:crunch_bite/common/components/Buttons/index.dart';

class AllowLocationScreen extends StatelessWidget {
  const AllowLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
      body: Container(
          width: width,
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What's your location?",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 18.0, horizontal: 0),
                  child: Text(
                    "We need your location to show available restaurant and product?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff888888),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin:
                      const EdgeInsets.only(top: 50.0),
                  child: Image.asset(
                    'assets/image/location.png',
                    fit: BoxFit.fill,
                     width: 400,
                     height: 280,
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2),
                  child: PrimaryButton(title: "Allow Location access",onPrimaryBtnClick:() => {
                      Navigator.pushNamed(context, '/landingPage')
                  },),
                ),
              )),
              Container(
                alignment: Alignment.center,
                 padding: EdgeInsets.only(bottom:56),
                child: Text('Enter location manually',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFFFC8019),
                        fontStyle: FontStyle.normal, // italic
                        fontWeight: FontWeight.w400
                        )
                        ),
              ),
            ],
          )),
    );
  }
}
