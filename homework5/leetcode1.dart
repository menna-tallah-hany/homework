class Solution {
  bool isPalindrome(String s) {
    String s = 'radar';
    String reversed = s.split('').reversed.join();

    if (s == reversed) {
      return true;
    } else
      return false;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.isPalindrome('panana'));
  print(solution.isPalindrome('radar'));
}
