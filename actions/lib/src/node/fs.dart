// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: constant_identifier_names

import 'dart:js_interop';

import 'package:actions/src/node/os.dart';
import 'package:path/path.dart' as p;

/// POSIX functions for interacting with the file system.
/// Wraps https://nodejs.org/api/fs.html
@JS()
external FileSystem get fs;

abstract final class FileSystemAccess {
  static const int F_OK = 0;
  static const int X_OK = 1 << 0;
  static const int W_OK = 1 << 1;
  static const int R_OK = 1 << 2;
}

@JS()
extension type FileSystem(JSObject it) {
  external bool existsSync(String path);

  @JS('readFileSync')
  external String _readFileSync(String path, [String encoding]);

  /// Read the contents of the [path].
  String readFileSync(String path) => _readFileSync(path, 'utf8');

  external void writeFileSync(String path, String data);

  external void accessSync(String path, [int mode]);

  external void appendFileSync(String path, String data);

  /// Whether the current user has permissions to access [path].
  /// 
  /// Use [mode] to select which access level to check.
  bool canAccess(String path, {int mode = FileSystemAccess.F_OK}) {
    try {
      accessSync(path, mode);
      return true;
    } on Object {
      return false;
    }
  }

  @JS('rmSync')
  external void _rmSync(String path, [_RmdirOptions? options]);

  /// Recursively deletes the directory at [path].
  void rmSync(String path) => _rmSync(path, _RmdirOptions(recursive: true));

  external String mkdtempSync(String prefix);
  external int openSync(String path);
  external void closeSync(int fd);

  Future<R> withTempDir<R>(
    String prefix,
    Future<R> Function(String tempDir) fn,
  ) async {
    final tempDir = mkdtempSync(p.join(os.tmpdir(), prefix));
    try {
      return await fn(tempDir);
    } finally {
      rmSync(tempDir);
    }
  }

  String createFile(String path) {
    final fd = openSync(path);
    closeSync(fd);
    return path;
  }
}

@JS()
@anonymous
@staticInterop
class _RmdirOptions {
  external factory _RmdirOptions({
    bool? recursive,
  });
}
