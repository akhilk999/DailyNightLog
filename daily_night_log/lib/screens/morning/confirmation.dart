import 'package:flutter/material.dart';
import 'package:daily_night_log/color.dart';
import 'package:daily_night_log/date_format.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override

  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return Scaffold(
            backgroundColor: const Color(0xFF573C31),
            body: Column(
              children: [
                Center(
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.h),
                      child: Text('dream journal', style: TextStyle(fontSize: 30.sp, color: Colors.grey[200]))
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 6.h),
                        child: Text('today\'s date:', style: TextStyle(fontSize: 20.sp, color: Colors.grey[200]))
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15.w, 6.h),
                        child: Text(formatDate(DateTime.now()), style: TextStyle(fontSize: 20.sp, color: Colors.grey[200]))
                    ),
                  ],
                ),
              ],
            ),
          );
        }
    );
  }
}
