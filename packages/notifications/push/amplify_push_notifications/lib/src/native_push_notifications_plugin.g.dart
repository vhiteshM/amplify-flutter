//
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// Autogenerated from Pigeon (v10.1.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

enum PermissionStatus {
  shouldRequest,
  shouldExplainThenRequest,
  granted,
  denied,
}

class PermissionsOptions {
  PermissionsOptions({
    required this.alert,
    required this.sound,
    required this.badge,
  });

  bool alert;

  bool sound;

  bool badge;

  Object encode() {
    return <Object?>[
      alert,
      sound,
      badge,
    ];
  }

  static PermissionsOptions decode(Object result) {
    result as List<Object?>;
    return PermissionsOptions(
      alert: result[0]! as bool,
      sound: result[1]! as bool,
      badge: result[2]! as bool,
    );
  }
}

class GetPermissionStatusResult {
  GetPermissionStatusResult({
    required this.status,
  });

  PermissionStatus status;

  Object encode() {
    return <Object?>[
      status.index,
    ];
  }

  static GetPermissionStatusResult decode(Object result) {
    result as List<Object?>;
    return GetPermissionStatusResult(
      status: PermissionStatus.values[result[0]! as int],
    );
  }
}

class _PushNotificationsFlutterApiCodec extends StandardMessageCodec {
  const _PushNotificationsFlutterApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is GetPermissionStatusResult) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PermissionsOptions) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return GetPermissionStatusResult.decode(readValue(buffer)!);
      case 129:
        return PermissionsOptions.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class PushNotificationsFlutterApi {
  static const MessageCodec<Object?> codec =
      _PushNotificationsFlutterApiCodec();

  Future<void> onNotificationReceivedInBackground(
      Map<Object?, Object?> withPayload);

  void nullifyLaunchNotification();

  static void setup(PushNotificationsFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.amplify_push_notifications.PushNotificationsFlutterApi.onNotificationReceivedInBackground',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.amplify_push_notifications.PushNotificationsFlutterApi.onNotificationReceivedInBackground was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final Map<Object?, Object?>? arg_withPayload =
              (args[0] as Map<Object?, Object?>?)?.cast<Object?, Object?>();
          assert(arg_withPayload != null,
              'Argument for dev.flutter.pigeon.amplify_push_notifications.PushNotificationsFlutterApi.onNotificationReceivedInBackground was null, expected non-null Map<Object?, Object?>.');
          await api.onNotificationReceivedInBackground(arg_withPayload!);
          return;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.amplify_push_notifications.PushNotificationsFlutterApi.nullifyLaunchNotification',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          // ignore message
          api.nullifyLaunchNotification();
          return;
        });
      }
    }
  }
}

class _PushNotificationsHostApiCodec extends StandardMessageCodec {
  const _PushNotificationsHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is GetPermissionStatusResult) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PermissionsOptions) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return GetPermissionStatusResult.decode(readValue(buffer)!);
      case 129:
        return PermissionsOptions.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class PushNotificationsHostApi {
  /// Constructor for [PushNotificationsHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  PushNotificationsHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _PushNotificationsHostApiCodec();

  Future<void> requestInitialToken() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.requestInitialToken',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<GetPermissionStatusResult> getPermissionStatus() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.getPermissionStatus',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as GetPermissionStatusResult?)!;
    }
  }

  Future<bool> requestPermissions(
      PermissionsOptions arg_withPermissionOptions) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.requestPermissions',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel
        .send(<Object?>[arg_withPermissionOptions]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as bool?)!;
    }
  }

  Future<Map<Object?, Object?>?> getLaunchNotification() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.getLaunchNotification',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return (replyList[0] as Map<Object?, Object?>?)?.cast<Object?, Object?>();
    }
  }

  Future<int> getBadgeCount() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.getBadgeCount',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList = await channel.send(null) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as int?)!;
    }
  }

  Future<void> setBadgeCount(int arg_withBadgeCount) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.setBadgeCount',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_withBadgeCount]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> registerCallbackFunction(int arg_callbackHandle) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.amplify_push_notifications.PushNotificationsHostApi.registerCallbackFunction',
        codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_callbackHandle]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else {
      return;
    }
  }
}
