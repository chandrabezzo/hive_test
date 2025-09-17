# hive_ce_test

Initialize a temporary Hive CE database for testing

[![Pub Version](https://img.shields.io/pub/v/hive_ce_test)](https://pub.dev/packages/hive_ce_test)
![GitHub](https://img.shields.io/github/license/chandrabezzo/hive_test)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/chandrabezzo/hive_test/Test)
[![Coverage Status](https://coveralls.io/repos/github/chandrabezzo/hive_test/badge.svg?branch=master)](https://coveralls.io/github/chandrabezzo/hive_test?branch=main)

## 🚀 Installation

Install from [pub.dev](https://pub.dev/packages/hive_ce_test):

```yaml
dev_dependencides:
  hive_ce_test: ^2.0.0
```

## 🔨 Usage

In your test's `setUp` method, simply run:

```dart
setUp(() async {
  await setUpTestHive();
});
```

Then, in the `tearDown` method:

```dart
tearDown(() async {
  await tearDownTestHive();
});
```

Under the hood, this is a real instance of `Hive CE`. So you can open boxes, perform read/write transactions etc just as you would in an app!

## 👨🏻‍💻 Authors

- [@ptrbrynt](https://www.github.com/chandrabezzo) at [Solusibejo](https://solusibejo.com/)
