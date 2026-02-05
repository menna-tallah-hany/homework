/*Question 10
Create a Dart program that builds a map of country codes. Print the value for 
'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 
'Jordan missing'. */
void main() {
  Map<String, String> countrys = {'EG': 'EGYPT', 'CH': 'China', 'CA': 'Canada'};
  print(countrys['EG']);
  countrys['QA'] = ('Qatar');
  if (countrys.containsKey('JO')) {
    print('exist');
  }else{
     print('Jordan missing');
  }
}
