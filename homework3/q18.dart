/*Question 18
Write a Dart program that reads environment variables from a map. If a value
 is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' 
depending on
conditions. */
void main (){
    Map<String, String?> env = {'ENV': 'production', 'KEY': null};
  
  String mode = (env['ENV'] ?? 'development').toUpperCase();
  String key = (env['KEY'] ?? 'default_key').toUpperCase();

  print('Mode: $mode');
  print(mode == 'PRODUCTION' ? 'Prod ready' : 'Non-prod');
}