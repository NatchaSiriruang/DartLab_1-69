abstract class PaymentMethod {
  pay(double amount);
}

class CreditCard implements PaymentMethod {
  String creditCardID;

  CreditCard(this.creditCardID);

  @override
  pay(double amount) => print(
    'Payment by Creditcard ID : ${creditCardID} | Amount : ${amount} Bath',
  );
}

class PrompPay implements PaymentMethod {
  String phoneNumber;

  PrompPay(this.phoneNumber);

  @override
  pay(double amount) => print(
    'Payment by PrompPay Phone : ${phoneNumber} | Amount : ${amount} Bath',
  );
}

class CashOnDelivery implements PaymentMethod {
  String address;

  CashOnDelivery(this.address);

  @override
  pay(double amount) => print(
    'Payment by CashOnDelivery Address : ${address} | Amount : ${amount} Bath',
  );
}

void main() {
  PaymentMethod a = CreditCard('1205106780994');
  a.pay(2500);
  PaymentMethod b = PrompPay('0812469730');
  b.pay(660);
  PaymentMethod c = CashOnDelivery('555/5 Nakhom,Phaisalee,Nakhon Sawan');
  c.pay(240);
}
