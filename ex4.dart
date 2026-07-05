void main() {
  String? middleName;
  String city = 'Nakhon Sawan';

  int length = middleName?.length ?? 0;
  print('MiddleName length : $length');

  print('City length : ${city.length}');

  print('Middle name before assignment : $middleName');
  middleName ??= 'N/A';
  print('Middle name after assignment : $middleName');
}
