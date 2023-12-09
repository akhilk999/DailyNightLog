import 'package:daily_night_log/screens/morning/confirmation.dart';
import 'package:flutter/material.dart';
import 'package:daily_night_log/color.dart';
import 'package:daily_night_log/date_format.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Morning extends StatefulWidget {
  const Morning({super.key});

  @override
  State<Morning> createState() => _MorningState();
}

class _MorningState extends State<Morning> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: const Color(0xFF573C31),
          body: Form(
            key: _formKey,
            child: Column(
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
                        padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 4.h),
                        child: Text('today\'s date:', style: TextStyle(fontSize: 20.sp, color: Colors.grey[200]))
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15.w, 4.h),
                        child: Text(formatDate(DateTime.now()), style: TextStyle(fontSize: 20.sp, color: Colors.grey[200]))
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(10.w, 0, 5.w, 4.h),
                        child: OutlinedButton(
                          onPressed: (){
                            //Navigator.push(context, MaterialPageRoute(settings: RouteSettings(name: "/Confirmation"), builder: (context) => Confirmation()));
                          },
                          //style: ButtonStyle(),
                          child: Text('no dream', style: TextStyle(fontSize: 15.sp, color: Colors.grey[200])),
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15.w, 4.h),
                        child: OutlinedButton(
                          onPressed: (){
                            //Navigator.push(context, MaterialPageRoute(settings: RouteSettings(name: "/Confirmation"), builder: (context) => Confirmation()));
                          },
                          child: Text('don\'t remember', style: TextStyle(fontSize: 15.sp, color: Colors.grey[200])),
                        )
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(10.w,0,15.w,4.h),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'how was your day?',
                        hintStyle: TextStyle(fontSize: 13.sp, color: Colors.grey[400])
                      ),
                      validator: (String? value) {
                        if(value == null || value.isEmpty) {
                          return 'pls enter something';
                        }
                        return null;
                      },
                      style: TextStyle(fontSize: 15.sp, color: Colors.grey[200]),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(65.w,0,15.w,4.h),
                    child: OutlinedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){}
                        //Navigator.push(context, MaterialPageRoute(settings: RouteSettings(name: "/Confirmation"), builder: (context) => Confirmation()));
                      },
                      child: Text('done', style: TextStyle(fontSize: 15.sp, color: Colors.grey[200])),
                    )
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
