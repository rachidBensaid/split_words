library split_words;

String splitOnUppercase(String str) {
  return str.replaceAllMapped(RegExp(r"([A-Z]+)"), (match) {
    return ' ${match.group(1)}';
  });
}

String splitOnSpecialChars(String str) {
  return str.replaceAll(RegExp(r"([^a-zA-Z0-9'\s])"), " ");
}

List<String> splitWords({String str = "", String separator = ""}) {
  String newString = str;
  List<String> separators = separator.split('|');
  separators.forEach((String value) {
    switch (value) {
      case "upper":
        newString = splitOnUppercase(newString);
        break;
      case "char":
        newString = splitOnSpecialChars(newString);
        break;
    }
  });

  return newString.replaceAll(RegExp(r"\s\s+"), " ").trim().split(RegExp(r" "));
}
