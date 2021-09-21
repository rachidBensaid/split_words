import 'package:flutter_test/flutter_test.dart';
import 'package:split_words/split_words.dart';

void main() {
  test('Words are separated with whitespaces', () {
    expect(splitWords(str: "hello world"), ['hello', 'world']);
    expect(splitWords(str: "hello . world"), ['hello', '.', 'world']);
    expect(splitWords(str: "hello.world"), ['hello.world']);
    expect(splitWords(str: "hello           world"), ['hello', 'world']);
  });

  test('Words are separated with special characters', () {
    expect(splitWords(str: "hello , world", separator: "char"),
        ['hello', 'world']);
    expect(
        splitWords(str: "hello,world", separator: "char"), ['hello', 'world']);
    expect(splitWords(str: "hello | world", separator: "char"),
        ['hello', 'world']);
    expect(splitWords(str: "hello . world", separator: "char"),
        ['hello', 'world']);
    expect(splitWords(str: "hello * World", separator: "char"),
        ['hello', 'World']);
    expect(
        splitWords(str: "hello.World", separator: "char"), ['hello', 'World']);
    expect(splitWords(str: "I'm 39 years old", separator: "char"),
        ['I\'m', '39', "years", "old"]);
  });

  test('Words are separated with uppercase letters', () {
    expect(
        splitWords(str: "HelloWorld", separator: "upper"), ['Hello', 'World']);
    expect(splitWords(str: "hello.World", separator: "upper"),
        ['hello.', 'World']);
  });

  test('ords are separated with uppercase letters and special chars', () {
    expect(
        splitWords(str: "HelloWorld,my name is john_doe", separator: "upper|char"), ['Hello', 'World', "my", "name", "is", "john", "doe"]);
  });
}
