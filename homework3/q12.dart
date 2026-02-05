/*Question 12
Create a Dart program that safely reads a phone number from a map. If the phone 
number is null,
print a default message. Then update the phone number and print its length. */
void main (){
  Map<String, String?> userData = {'name': 'Alice', 'phone': null};
  
  String phone = userData['phone'] ?? 'No phone number provided';
  print(phone);

  userData['phone'] = '0123456789';
  print('New Phone Length: ${userData['phone']?.length}');
}

