import 'package:glow_up/generated/l10n.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    tz.initializeTimeZones(); // Initialize timezone package
    var initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');


    var initializationSettingsIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) async {});

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await notificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {});
  }

  NotificationDetails notificationDetails() {
    return const NotificationDetails(
        android: AndroidNotificationDetails('channelId', 'channelName',
            importance: Importance.max),
        iOS: DarwinNotificationDetails());
  }

  Future<void> showNotification(
      {int id = 0, String? title, String? body, String? payLoad}) async {
    return notificationsPlugin.show(
        id, title, body, await notificationDetails());
  }

  Future<void> scheduleNotification({
    int id = 0,
    required String? title,
    required String? body,
    required Duration duration,
  }) async {
    var scheduledNotificationDateTime =
        tz.TZDateTime.now(tz.local).add(duration);
    await notificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      scheduledNotificationDateTime,
      await notificationDetails(),
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  Future<void> cancelScheduledNotification(int id) async {
    await notificationsPlugin.cancel(id);
  }

  Future<void> scheduleOnboardingNotifications(bool schedule, S s) async {
    const notificationTimes = [
      Duration(hours: 1),
      Duration(hours: 24),
      Duration(days: 7),
      Duration(days: 30),
    ];

    for (var i = 0; i < notificationTimes.length; i++) {
      final id = i + 1;
      if (schedule) {
        await scheduleNotification(
          id: id,
          title: s.titleOnboardingNotification,
          body: s.bodyOnboardingNotification,
          duration: notificationTimes[i],
        );
      } else {
        await cancelScheduledNotification(id);
      }
    }
  }

  Future<void> scheduleSubscriptionNotifications(bool schedule, S s) async {
    const notificationTimes = [
      Duration(hours: 1),
      Duration(hours: 24),
      Duration(days: 7),
      Duration(days: 30),
      Duration(days: 60),
    ];

    for (var i = 0; i < notificationTimes.length; i++) {
      final id = i + 5;
      if (schedule) {
        await scheduleNotification(
          id: id,
          title: s.titleSubscriptionNotification,
          body: s.bodySubscriptionNotification,
          duration: notificationTimes[i],
        );
      } else {
        await cancelScheduledNotification(id);
      }
    }
  }

  Future<void> scheduleDeepNotifications(bool schedule, S s) async {
    const notificationTimes = [
      Duration(hours: 1),
      Duration(hours: 24),
      Duration(days: 7),
      Duration(days: 30),
    ];

    for (var i = 0; i < notificationTimes.length; i++) {
      final id = i + 10;
      if (schedule) {
        await scheduleNotification(
          id: id,
          title: s.titleDeepNotification,
          body: s.bodyDeepNotification,
          duration: notificationTimes[i],
        );
      } else {
        await cancelScheduledNotification(id);
      }
    }
  }
}
