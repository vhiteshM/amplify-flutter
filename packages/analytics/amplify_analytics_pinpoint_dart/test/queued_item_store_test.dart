// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@Timeout(Duration(seconds: 70))

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/dart_queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:amplify_core/amplify_core.dart';

import 'package:test/test.dart';

final AmplifyLogger _logger = AmplifyLogger.category(Category.analytics)
    .createChild('QueuedItemStoreTest');

void main() {
  late DartQueuedItemStore db;

  group('DartQueuedItemStore ', () {
    setUpAll(() {
      final stopwatch = Stopwatch()..start();
      db = DartQueuedItemStore('/tmp');
      _logger.info('\n\n=== SETUP ===\n${stopwatch.elapsed}');
    });

    tearDownAll(() async {
      await db.clear();
    });

    setUp(() async {
      await db.clear();
    });

    Future<Iterable<QueuedItem>> getAll() async {
      return db.getCount(100);
    }

    test('writes values to storage', () async {
      // try to fake an easy op to see init times
      final stopwatch1 = Stopwatch()..start();
      await db.getCount(1);
      _logger
          .info('\n\n=== WRITE ===\ninit time elapses\n${stopwatch1.elapsed}');

      final stopwatch = Stopwatch()..start();
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value);
      }
      _logger.info('\n\n=== WRITE ===\nvalues added\n${stopwatch.elapsed}');

      final readItems = await db.getCount(values.length);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, equals(values));

      _logger.info('\n\n=== WRITE ===\nfinished\n${stopwatch.elapsed}');
    });

    test('returns first n items in storage', () async {
      final stopwatch = Stopwatch()..start();

      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value);
      }

      final readItems = await db.getCount(3);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, equals(values.sublist(0, 3)));

      _logger.info(
        '\n\nreturns first n items in storage\nfinished\n${stopwatch.elapsed}',
      );
    });

    test(
        'returns all stored items when get request size exceeds stored item count',
        () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value);
      }

      final readItems = await db.getCount(100);
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values);
    });

    test('deletes all items in storage', () async {
      const values = ['0', '1', '2', '3', '4', '5'];
      for (final value in values) {
        await db.addItem(value);
      }

      await db.deleteItems(await getAll());

      final readItems = await getAll();
      expect(readItems, isEmpty);
    });

    test('deletes first subset of stored items', () async {
      final stopwatch = Stopwatch()..start();

      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value);
      }

      await db.deleteItems(await db.getCount(3));

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(3));

      _logger.info(
        '\n\ndeletes first subset of stored items\nfinished\n${stopwatch.elapsed}',
      );
    });

    test('deletes middle subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value);
      }

      final itemsToDelete = (await getAll()).toList().sublist(3, 7);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['0', '1', '2', '7', '8', '9']);
    });

    test('deletes last subset of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value);
      }

      final itemsToDelete = (await getAll()).toList().sublist(7);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(0, 7));
    });

    test('deletes first, middle, and last subsets of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value);
      }

      const valuesToDelete = ['0', '1', '4', '5', '8', '9'];
      final itemsToDelete = (await getAll()).where((item) {
        return valuesToDelete.contains(item.value);
      });
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['2', '3', '6', '7']);
    });

    test('deletes inner left and right subsets of stored items', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value);
      }

      const valuesToDelete = ['1', '2', '4', '5', '7', '8'];
      final itemsToDelete = (await getAll()).where((item) {
        return valuesToDelete.contains(item.value);
      });
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, const ['0', '3', '6', '9']);
    });

    test('deletes the first stored item', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value);
      }

      final itemsToDelete = (await getAll()).toList().sublist(0, 1);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(1));
    });

    test('deletes the last stored item', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value);
      }

      final itemsToDelete = (await getAll()).toList().sublist(9);
      await db.deleteItems(itemsToDelete);

      final readItems = await getAll();
      final readValues = readItems.map((e) => e.value);
      expect(readValues, values.sublist(0, 9));
    });

    test('throws no error when deleting all items twice', () async {
      const values = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (final value in values) {
        await db.addItem(value);
      }

      var readValues = await getAll();

      await db.deleteItems(readValues);
      await db.deleteItems(readValues);

      readValues = await getAll();

      expect(readValues, isEmpty);
    });
  });
}
