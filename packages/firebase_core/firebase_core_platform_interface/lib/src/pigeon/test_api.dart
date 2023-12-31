// Copyright 2023, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// Autogenerated from Pigeon (v9.2.5), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'messages.pigeon.dart';

class _TestFirebaseCoreHostApiCodec extends StandardMessageCodec {
  const _TestFirebaseCoreHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is PigeonFirebaseOptions) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is PigeonInitializeResponse) {
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
        return PigeonFirebaseOptions.decode(readValue(buffer)!);
      case 129:
        return PigeonInitializeResponse.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestFirebaseCoreHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = _TestFirebaseCoreHostApiCodec();

  Future<PigeonInitializeResponse> initializeApp(
      String appName, PigeonFirebaseOptions initializeAppRequest);

  Future<List<PigeonInitializeResponse?>> initializeCore();

  Future<PigeonFirebaseOptions> optionsFromResource();

  static void setup(TestFirebaseCoreHostApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseCoreHostApi.initializeApp', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseCoreHostApi.initializeApp was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_appName = (args[0] as String?);
          assert(arg_appName != null,
              'Argument for dev.flutter.pigeon.FirebaseCoreHostApi.initializeApp was null, expected non-null String.');
          final PigeonFirebaseOptions? arg_initializeAppRequest =
              (args[1] as PigeonFirebaseOptions?);
          assert(arg_initializeAppRequest != null,
              'Argument for dev.flutter.pigeon.FirebaseCoreHostApi.initializeApp was null, expected non-null PigeonFirebaseOptions.');
          final PigeonInitializeResponse output =
              await api.initializeApp(arg_appName!, arg_initializeAppRequest!);
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseCoreHostApi.initializeCore', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          // ignore message
          final List<PigeonInitializeResponse?> output =
              await api.initializeCore();
          return <Object?>[output];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseCoreHostApi.optionsFromResource', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          // ignore message
          final PigeonFirebaseOptions output = await api.optionsFromResource();
          return <Object?>[output];
        });
      }
    }
  }
}

abstract class TestFirebaseAppHostApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  Future<void> setAutomaticDataCollectionEnabled(String appName, bool enabled);

  Future<void> setAutomaticResourceManagementEnabled(
      String appName, bool enabled);

  Future<void> delete(String appName);

  static void setup(TestFirebaseAppHostApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticDataCollectionEnabled',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticDataCollectionEnabled was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_appName = (args[0] as String?);
          assert(arg_appName != null,
              'Argument for dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticDataCollectionEnabled was null, expected non-null String.');
          final bool? arg_enabled = (args[1] as bool?);
          assert(arg_enabled != null,
              'Argument for dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticDataCollectionEnabled was null, expected non-null bool.');
          await api.setAutomaticDataCollectionEnabled(
              arg_appName!, arg_enabled!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticResourceManagementEnabled',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticResourceManagementEnabled was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_appName = (args[0] as String?);
          assert(arg_appName != null,
              'Argument for dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticResourceManagementEnabled was null, expected non-null String.');
          final bool? arg_enabled = (args[1] as bool?);
          assert(arg_enabled != null,
              'Argument for dev.flutter.pigeon.FirebaseAppHostApi.setAutomaticResourceManagementEnabled was null, expected non-null bool.');
          await api.setAutomaticResourceManagementEnabled(
              arg_appName!, arg_enabled!);
          return <Object?>[];
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FirebaseAppHostApi.delete', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FirebaseAppHostApi.delete was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_appName = (args[0] as String?);
          assert(arg_appName != null,
              'Argument for dev.flutter.pigeon.FirebaseAppHostApi.delete was null, expected non-null String.');
          await api.delete(arg_appName!);
          return <Object?>[];
        });
      }
    }
  }
}
