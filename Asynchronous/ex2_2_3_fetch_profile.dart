Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));
  if (userId <= 0) {
    throw Exception('ข้อมูลไม่ถูกต้อง');
  }
  return {'id': userId, 'ชื่อ': 'เคท เดสัน'};
}

void main() async {
  try {
    Map<String, dynamic> result = await fetchProfile(15);
    print('ข้อมูลโปรไฟล์ $result ');
  } catch (e) {
    print('เกิดข้อผิดพลาด : $e');
  } finally {
    print('จบการตรวจสอบ \n');
  }

  try {
    Map<String, dynamic> result = await fetchProfile(-10);
    print('ข้อมูลโปรไฟล์ $result ');
  } catch (e) {
    print('เกิดข้อผิดพลาด : $e');
  } finally {
    print('จบการตรวจสอบ \n');
  }
}
