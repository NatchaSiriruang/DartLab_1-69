import 'dart:async';

void main() {
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (data) => print("การแจ้งเตือน: $data"),
    onDone: () => print("สตรีมสิ้นสุดแล้ว"),
  );

  controller.add('คุณมีข้อความที่ยังไม่ได้อ่าน');
  controller.add('เพื่อนของคุณเพิ่มโพสต์ใหม่');
  controller.add('ฝนกำลังจะตกในอีก 30 นาที');

  controller.close();
}
