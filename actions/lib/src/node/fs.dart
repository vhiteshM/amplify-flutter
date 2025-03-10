// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

/// POSIX functions for interacting with the file system.
/// Wraps https://nodejs.org/api/fs.html
@JS()
external FileSystem get fs;

@JS()
extension type FileSystem(JSObject it) {
  /// Whether the [path] exists, false otherwise.
  external bool existsSync(String path);

  @JS('readFileSync')
  external String _readFileSync(String path, [String encoding]);

  /// Read the contents of the [path].
  String readFileSync(String path) => _readFileSync(path, 'utf8');

  @JS('rmdirSync')
  external void _rmdirSync(String path, [_RmdirOptions? options]);

  /// Recursively deletes the directory at [path].
  void rmdirSync(String path) => _rmdirSync(path, _RmdirOptions(recursive: true));
}

@JS()
@anonymous
@staticInterop
class _RmdirOptions {
  external factory _RmdirOptions({
    bool? recursive,
  });
}
