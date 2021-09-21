# split_words
Split a sentence (String) to words (List<String>), based on whitespace, special characters or uppercase letters.

## Install

### pubspec.yaml

Update pubspec.yaml and add the following line to your dependencies.

```yaml
dependencies:
  split_words: ^0.1.0
```

## Import

Import the package with :

```dart
import 'package:split_words/split_words.dart';
```

## Usage

### Default
```dart
import 'package:split_words/split_words.dart';

void main() {
  print(splitWords(str: "hello world")); // ["hello", "world"]
  print(splitWords(str: "hello . world")); // ["hello", ".", "world"]
  print(splitWords(str: "hello.world")); // ["hello.world"]
  print(splitWords(str: "hello           world")); // ["hello", "world"]
}
```

### Split on special characters
```dart
import 'package:split_words/split_words.dart';

void main() {
  print(splitWords(str: "hello , world", separator: "char")); // ["hello", "world"]
  print(splitWords(str: "hello.World", separator: "char")); // ["hello", "World"]
  print(splitWords(str: "I'm 39 years old", separator: "char")); // ['I\'m', '39', "years", "old"]
}
```

### Split on uppercase
```dart
import 'package:split_words/split_words.dart';

void main() {
  print(splitWords(str: "HelloWorld", separator: "upper")); // ["Hello", "World"]
  print(splitWords(str: "hello.World", separator: "upper")); // ["hello", "World"]
}
```

### Split on special uppercase and special characters
```dart
import 'package:split_words/split_words.dart';

void main() {
  print(splitWords(str: "HelloWorld,my name is john_doe", separator: "upper|char")); 
  // ['Hello', 'World', "my", "name", "is", "john", "doe"]));
}
```

## Changelog

For a detailed changelog, see the [CHANGELOG.md](CHANGELOG.md) file

## Copyright and license

MIT License

Copyright (c) 2021 Rachid BEN SAID

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
