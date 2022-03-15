import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  void initstate() {
    super.initState();
    initPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Push Notification"),
      ),
    );
  }

  Future<void> initPlatform() async {
    await OneSignal.shared.setAppId("");
    await OneSignal.shared.getDeviceState().then(
          (value) => {
            print(value!.userId),
          },
        );
  }
}
