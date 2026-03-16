bool isAnagram(String s, String t) {
  if (s.length != t.length) {
    return false;
  }

  Map<String, int> counts = {};

  for (int i = 0; i < s.length; i++) {
    counts[s[i]] = (counts[s[i]] ?? 0) + 1;
    counts[t[i]] = (counts[t[i]] ?? 0) - 1;
  }

  for (int count in counts.values) {
    if (count != 0) {
      return false;
    }
  }

  return true;
}

