import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Call extends StatefulWidget {
  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  String phoneno = '8590970319';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () async {
                  await FlutterPhoneDirectCaller.callNumber(phoneno);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.purple,
                  child: Center(
                    child: Text(
                      'Call',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
