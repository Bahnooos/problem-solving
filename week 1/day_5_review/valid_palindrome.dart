class Solution {
  bool isPalindrome(String s) {
    int left = 0;
    s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    int right = s.length - 1;

    while (left <= right) {
      if (s[left] != s[right]) {
        return false;
      } else {
        right--;
        left++;
      }
    }
    return true;
  }
}
