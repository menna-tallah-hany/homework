/* Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is
 under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted)
 to decide what
message to print.*/
void main() {
  int age = 17;
  bool hasParent = true;
  String area = 'general';
  if (age < 18) {
    if (hasParent!) {
      print('underage user with parent : access process continues ');
    }
    switch (area) {
      case 'general':
        print('access granted to general area');
        break;
      case 'restricted':
        print('access granted to restricted area');
        break;
      default:
        print('unkown area');
    }
  }
}
