Future<String> getLoading() {
  return Future.delayed(Duration(seconds: 3), () => '2. โหลดเสร็จ');
}

void main() {
  print("1. เริ่ม");
  getLoading().then((value) => print(value));
  print("3. จบ");
}

/*คาดเดาลำดับผลลัพธ์ก่อนรัน แล้วอธิบายว่าเหตุใดจึงเป็นเช่นนนั้น
answer : 1. เริ่ม 
         3. จบ
         2. โหลดเสร็จ
เพราะว่า getLoading() เป็นงาน asynchronous ต้องรอ 3 วินาที 
main() จะข้ามไปทำบรรทัดถัดไปทันที เมื่อครบ 3 วินาที Future เสร็จ 
ฟังก์ชันใน .then() จึงเริ่มทำงานและพิมพ์ '2. โหลดเสร็จ' */
