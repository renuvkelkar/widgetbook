import 'dart:io' hide Directory, File;

import 'package:args/args.dart';
import 'package:ci/ci.dart';
import 'package:file/file.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:platform/platform.dart';
import 'package:process/process.dart';
import 'package:pub_updater/pub_updater.dart';
import 'package:widgetbook_cli/widgetbook_cli.dart';

class FakeEnvironment extends Fake implements Environment {
  @override
  final String name = 'test';

  @override
  final String apiUrl = '';

  @override
  final String appUrl = '';
}

class MockLogger extends Mock implements Logger {}

class MockPubUpdater extends Mock implements PubUpdater {}

class MockProgress extends Mock implements Progress {}

class MockContextManager extends Mock implements ContextManager {}

class MockRepository extends Mock implements Repository {}

class MockContext extends Mock implements Context {}

class MockWidgetbookHttpClient extends Mock implements WidgetbookHttpClient {}

class MockFileSystem extends Mock implements FileSystem {}

class MockPublishArgs extends Mock implements PublishArgs {}

class MockFile extends Mock implements File {}

class MockDirectory extends Mock implements Directory {}

class MockZipEncoder extends Mock implements ZipEncoder {}

class MockArgResults extends Mock implements ArgResults {}

class MockCiManager extends Mock implements CiManager {
  void mock({
    Vendor? vendor = null,
    bool isAzure = false,
    bool isBitbucket = false,
    bool isCodemagic = false,
    bool isGitHub = false,
    bool isGitLab = false,
  }) {
    when(() => this.vendor).thenReturn(vendor);
    when(() => this.isAzure).thenReturn(isAzure);
    when(() => this.isBitbucket).thenReturn(isBitbucket);
    when(() => this.isCodemagic).thenReturn(isCodemagic);
    when(() => this.isGitHub).thenReturn(isGitHub);
    when(() => this.isGitLab).thenReturn(isGitLab);
  }
}

class MockPlatform extends Mock implements Platform {}

class MockUseCaseReader extends Mock implements UseCaseReader {}

class MockStdin extends Mock implements Stdin {}

class MockProcessManager extends Mock implements ProcessManager {}

class FakeProcessResult extends Fake implements ProcessResult {}

class MockProcessResult {
  static ProcessResult success(String result) {
    return ProcessResult(
      0,
      0,
      result,
      '',
    );
  }

  static ProcessResult error(String err) {
    return ProcessResult(
      0,
      21,
      '',
      err,
    );
  }
}
