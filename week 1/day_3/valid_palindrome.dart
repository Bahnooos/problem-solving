class Solution {
  bool isPalindrome(String s) {
    final sLowecase = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    int rigth = sLowecase.length - 1;
    int left = 0;
    if (s.isEmpty) return true;
    while (left <= rigth) {
      if (sLowecase[left] != sLowecase[rigth]) return false;
      left++;
      rigth--;
    }

    return true;
  }
}
