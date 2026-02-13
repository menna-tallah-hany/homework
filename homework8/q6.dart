
  bool isValid(String s) {
  Map<String, String> bracketMap = {
    ')': '(',
    '}': '{',
    ']': '['
  };
  
  List<String> stack = [];

  for (int i = 0; i < s.length; i++) {
    String char = s[i];

    if (bracketMap.containsKey(char)) {
      String topElement = stack.isNotEmpty ? stack.removeLast() : '#';

      if (topElement != bracketMap[char]) {
        return false;
      }
    } else {
      stack.add(char);
    }
  }

  return stack.isEmpty;
}

void main() {
  print(isValid("()"));
  print(isValid("()[]{}"));
  print(isValid("(]"));
  print(isValid("([)]"));
  print(isValid("{[]}"));
}
