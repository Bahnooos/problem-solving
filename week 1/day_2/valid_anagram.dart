class Solution {
  bool isAnagram(String s, String t) {
    final map = {};
    if (s.length != t.length) return false;
    for (int i = 0; i < s.length; i++) {
      final sChar = s[i];
      map[sChar] = (map[sChar] ?? 0) + 1;
      print(map);
    }

    for (var i = 0; i < t.length; i++) {
      final tChar = t[i];
      if (!map.containsKey(tChar)) return false;
      map[tChar] = map[tChar] - 1;
      if (map[tChar] < 0) return false;
    }

    return true;
  }
}
