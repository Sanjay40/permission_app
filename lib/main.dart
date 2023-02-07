import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

void main()
{
  runApp(
    MaterialApp(
      home: PermissionApp(),
    ),
  );
}

class PermissionApp extends StatefulWidget {
  const PermissionApp({Key? key}) : super(key: key);

  @override
  State<PermissionApp> createState() => _PermissionAppState();
}

class _PermissionAppState extends State<PermissionApp> {

  TextStyle txt(){
    return GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5,
      fontSize: 18,
      color: Colors.white
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF0F0F0),
        title: Text("Permission",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontSize: 25,
          letterSpacing: 0.5
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 20,),
            CupertinoButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 120),
              color: Colors.black,
                child: Text("Open Camera",
                style: txt(),),
                onPressed: () async {
                  _requestPermissionCamera();
                },
            ),
            SizedBox(height: 20,),
            CupertinoButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 140),
              color: Colors.black,
              child: Text("Send SMS",
                style: txt(),),
              onPressed: () async {
                _requestPermissionSms();
              },
            ),
            SizedBox(height: 20,),
            CupertinoButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 105),
              color: Colors.black,
              child: Text("Current location",
                style: txt(),),
              onPressed: () async {
                _requestPermissionLocation();
              },
            ),
            SizedBox(height: 20,),
            CupertinoButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 125),
              color: Colors.black,
              child: Text("Contact Get",
                style: txt(),),
              onPressed: () async {
                _requestPermissionContact();
              },
            ),
            SizedBox(height: 20,),
            CupertinoButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 62),
              color: Colors.black,
              child: Text("Check Photos And Media",
                style: txt(),),
              onPressed: () async {
                _requestPermissionStorage();
              },
            ),
            SizedBox(height: 20,),
            CupertinoButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 90),
              color: Colors.black,
              child: Text("Show The Calender",
                style: txt(),
              ),
              onPressed: () async {
                _requestPermissionCalender();
              },
            ),
            SizedBox(height: 20,),
            CupertinoButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 130),
              color: Colors.black,
              child: Text("Play Audio",
                style: txt(),
              ),
              onPressed: () async {
                _requestPermissionAudio();
              },
            ),
            SizedBox(height: 20,),
            CupertinoButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 80),
              color: Colors.black,
              child: Text("system Alert Window",
                style: txt(),
              ),
              onPressed: () async {
                _requestPermissionSystemAlert();
              },
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );

  }
  _requestPermissionCamera() async {
    var status = await Permission.camera.request();
    if(status.isGranted)
    {
      print("open Camera");
    }
    else
    {
      _requestPermissionCamera();
    }
  }

  _requestPermissionSms()async{
    var status = await Permission.sms.request();
    if(status.isGranted)
    {
      print("open Sms Box");
    }
    else
    {
      _requestPermissionSms();
    }
  }

  _requestPermissionLocation()async{
    var status = await Permission.location.request();
    if(status.isGranted)
    {
      print("Current location Get");
    }
    else
    {
      _requestPermissionLocation();
    }
  }

  _requestPermissionContact()async{
    var status = await Permission.contacts.request();
    if(status.isGranted)
    {
      print("Contact Get");
    }
    else
    {
      _requestPermissionContact();
    }
  }

  _requestPermissionStorage()async{
    var status = await Permission.storage.request();
    if(status.isGranted)
    {
      print("Contact Get");
    }
    else
    {
      _requestPermissionStorage();
    }
  }

  _requestPermissionCalender()async{
    var status = await Permission.calendar.request();
    if(status.isGranted)
    {
      print("Calender Get");
    }
    else
    {
      _requestPermissionCalender();
    }
  }

  _requestPermissionAudio()async{
    var status = await Permission.microphone.request();
    if(status.isGranted)
    {
      print("Play Audio");
    }
    else
    {
      _requestPermissionAudio();
    }
  }

  _requestPermissionSystemAlert()async{
    var status = await Permission.systemAlertWindow.request();
    if(status.isGranted)
    {
      print("system Alert Window");
    }
    else
    {
      _requestPermissionSystemAlert();
    }
  }

}
