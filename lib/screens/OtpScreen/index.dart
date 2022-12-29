import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    IntlPhoneField(
      decoration: InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
      initialCountryCode: 'IN',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back, color: Colors.black),
            ),
          ],
        ),
      ),
      body: Container(
          width: width,
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(children: [
            const Text(
              "Enter your mobile number to get OTP",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 22,
                  horizontal: 2), //apply padding horizontal or vertical only
              child: IntlPhoneField(
                initialCountryCode: 'IN',
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xff888888)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 18.0, horizontal: 2),
                child: Text(
                  "Get OTP via: ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff888888),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFBEADC),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      child: Text("WhatsApp",
                          style: TextStyle(
                              color: Color(0xffF8620E),
                              fontWeight: FontWeight.w500,
                              fontSize: 18)),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF8620E),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      child: Text('SMS',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ]
              // ),
              )),
    );
  }
}
