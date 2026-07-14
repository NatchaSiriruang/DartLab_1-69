void main() {
  print('1. เริ่ม');
  getData();
  print('3. จบ');
}

void getData() async {
  String data = await getLoading();
  print(data);
}

Future<String> getLoading() {
  return Future.delayed(Duration(seconds: 3), () => '2. โหลดเสร็จ');
}
