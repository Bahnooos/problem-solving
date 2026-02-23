class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> pairs = {')': '(', ']': '[', '}': '{'};
    for (var i = 0; i < s.length; i++) {
      final String char = s[i];
      if (pairs.containsValue(char)) {
        stack.add(s[i]);
      } else {
        if (stack.isEmpty) return false;
        final pooped = stack.last;
        if (pooped != pairs[char]) return false;
        stack.removeLast();
      }
    }
    return stack.isEmpty;
  }
}
