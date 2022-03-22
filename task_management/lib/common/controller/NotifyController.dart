import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:task_management/common/route/app_route.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class NotifyController extends GetxController {
  final _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future initNotification() async {
    tz.initializeTimeZones();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: selectNotification,
    );
  }

  Future onDidReceiveLocalNotification(int id, String? title, String? body, String? payload) async {
    Get.dialog(
      Text(body ?? 'this is IOS message'),
    );
  }

  Future selectNotification(String? payload) async {
    Get.to(payload ?? AppRoute.INITIAL);
  }

  Future notify({
    required String title,
    required String body,
    String goPage = AppRoute.INITIAL,
  }) async {
    NotificationDetails details = _getDetails();
    await _flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      details,
      payload: goPage,
    );
  }

  Future scheduleNotify({
    required String title,
    required String body,
    required Duration duration,
    String goPage = AppRoute.INITIAL,
  }) async {

    NotificationDetails details = _getDetails();
    await _flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      title,
      body,
      tz.TZDateTime.now(tz.local).add(duration),
      details,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  NotificationDetails _getDetails(){
    const AndroidNotificationDetails androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'your channel id',
      'your channel name',
      channelDescription: 'your channel description',
    );
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );
    return platformChannelSpecifics;
  }
}
