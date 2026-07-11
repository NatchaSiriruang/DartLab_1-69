class Book {
  String? title;
  String? author;
  double? price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print("ชื่อหนังสือ: $title , ผู้เขียน: $author , ราคา : $price บาท");
  }
}

void main() {
  Book a = Book('Python', 'บัญชา ปะสีละเตสัง', 350);
  Book b = Book('ภาษีธุรกิจ 101', 'ถนอม เกตุเอม', 235);
  a.showDetail();
  b.showDetail();
}
