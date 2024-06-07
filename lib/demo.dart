import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';


class NotificationExample extends StatelessWidget {
  void showSideNotification(BuildContext context, String message, Color color, IconData icon) {
    final screenSize = MediaQuery.of(context).size;

    Flushbar(
      message: message,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.only(left: screenSize.width - 300, top: 20, bottom: screenSize.height/1.5),
      borderRadius: BorderRadius.circular(8),
      backgroundColor: color,
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16),
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 8,
          offset: Offset(4, 4),
        ),
      ],
      shouldIconPulse: false,
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side Notification Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text('Notification Alert', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Row(
              children: <Widget>[
                ElevatedButton(

                  onPressed: () => toastification.showCustom(
        context: context,
        builder: (BuildContext context, ToastificationItem holder) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Custom Toast', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('This is a custom toast message!', style: TextStyle(color: Colors.white)),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Perform an action when the button is pressed
                  },
                  child: Text('Do Something'),
                ),
              ],
            ),
          );
        },
        autoCloseDuration: const Duration(seconds: 5),
      ), child: Text("13434"),

                ),
                SizedBox(width: 8),
                ElevatedButton(

                  onPressed: () => toastification.showCustom(
                    context: context,
                    builder: (BuildContext context, ToastificationItem holder) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Custom Toast', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            Text('This is a custom toast message!', style: TextStyle(color: Colors.white)),
                            SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                // Perform an action when the button is pressed
                              },
                              child: Text('Do Something'),
                            ),
                          ],
                        ),
                      );
                    },
                    autoCloseDuration: const Duration(seconds: 5),
                  ), child: Text("13434"),

                ),
                SizedBox(width: 8),
                ElevatedButton(

                  onPressed: () => showSideNotification(context, 'Warning Notification', Colors.amber, Icons.warning),
                  child: Text('Warning'),
                ),
                SizedBox(width: 8),
                ElevatedButton(

                  onPressed: () => showSideNotification(context, 'Danger Notification', Colors.red, Icons.error),
                  child: Text('Danger'),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Add more sections as needed
          ],
        ),
      ),
    );
  }
}
