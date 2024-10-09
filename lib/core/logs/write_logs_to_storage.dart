import 'dart:io';


import 'package:dio/dio.dart';

import '../../features/elrn/data/datasources/local/token_db_service.dart';
import '../../main.dart';

// writeLogsToStorage(String text) async {
//   await sendSplittedMessages("Platform: ${Platform.operatingSystem}\nToken: ${TokenDBService.accessToken}\nAppVersion: $APP_VERSION\n ${DateTime.now()}: $text");
// }
//
// class TelegramClient {
//   final String chatId;
//   final String botToken;
//
//   TelegramClient({
//     required this.chatId,
//     required this.botToken,
//   });
//
//   // Text of the message to be sent, 1-4096 characters after entities parsing
//
//   Future<Response> sendMessage(final String message) {
//     final Uri uri = Uri.https(
//       "api.telegram.org",
//       "/bot$botToken/sendMessage",
//       {
//         "chat_id": chatId,
//         "text": (message.replaceAll("<", "&lt;").replaceAll(">", "&gt;")),
//         "parse_mode": "html",
//       },
//     );
//     return Dio().getUri(uri);
//   }
// }
//
// sendSplittedMessages(String s) {
//   if (s.length > 4096) {
//     String newMessage = s.substring(4096, s.length);
//     String oldMessage = s.substring(0, 4096);
//     telegramClient.sendMessage(oldMessage);
//     sendSplittedMessages(newMessage);
//   } else {
//     telegramClient.sendMessage(s);
//   }
// }
//
// final TelegramClient telegramClient = TelegramClient(
//   chatId: "-1002004895152",
//   botToken: "6603278540:AAHeSa7oOLXoLaz8qBmfhvu0ioPHuFu8tOA",
// );
