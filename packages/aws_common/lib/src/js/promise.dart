// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

/// A [Promise] executor callback.
typedef Executor<T extends JSAny?> = void Function(
  PromiseResolver<T> resolve,
  PromiseRejector reject,
);

@JS()
@staticInterop
abstract class PromiseResolver<T extends JSAny?> implements JSFunction {}

extension PromiseResolveProps<T extends JSAny?> on PromiseResolver<T> {
  void resolve([T? result]) => callMethod('call'.toJS, this, result);
}

@JS()
@staticInterop
abstract class PromiseRejector implements JSFunction {}

extension PromiseRejectorProps on PromiseRejector {
  void reject(Object? error) => callMethod('call'.toJS, this, error.jsify());
}

/// {@template aws_common.js.promise}
/// Represents the eventual completion (or failure) of an asynchronous operation
/// and its resulting value.
/// {@endtemplate}
@JS()
@staticInterop
abstract class Promise<T extends JSAny?> {
  /// Creates a JS Promise.
  factory Promise(Executor<T> executor) => Promise._(executor.toJS);

  external factory Promise._(JSFunction executor);

  /// Creates a Promise from a Dart [future].
  factory Promise.fromFuture(Future<T> future) =>
      Promise<T>((resolver, rejector) async {
        try {
          resolver.resolve(await future);
        } on Object catch (e) {
          rejector.reject(e);
        }
      });
}

/// {@macro aws_common.js.promise}
extension PropsPromise<T extends JSAny?> on Promise<T> {
  /// Resolves `this` as a Dart [Future].
  Future<T> get future =>
      (this as JSPromise).toDart.then((value) => value as T);
}
