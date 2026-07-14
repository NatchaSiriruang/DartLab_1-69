import 'dart:async';

void main() {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (data) => print("ได้รับข้อมูล: $data"),
    onError: (err) => print("ข้อผิดพลาด: $err"),
    onDone: () => print("สตรีมปิดแล้ว"),
  );

  controller.add('สวัสดี');
  controller.add('Hello');
  controller.add('Ni Hao');

  controller.close();
}
