class Employee {
  String name;
  String work;
  Employee(this.name, this.work);

  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  double monthly;
  double bonus;

  FullTimeEmployee(String name, this.monthly, this.bonus)
    : super(name, 'Full-Time');

  @override
  double calculateSalary() {
    return monthly + bonus;
  }
}

class PartTimeEmployee extends Employee {
  double rate;
  double hours;

  PartTimeEmployee(String name, this.rate, this.hours)
    : super(name, 'Part-Time');

  @override
  double calculateSalary() {
    return rate * hours;
  }
}

void main() {
  List<Employee> employee = [
    FullTimeEmployee('Wasan ', 30000, 2300),
    PartTimeEmployee('Sirikorn', 80, 120),
    PartTimeEmployee('Natcha', 100, 180),
  ];

  for (var emp in employee) {
    print(
      'Employee : ${emp.name} ( ${emp.work} ) >> Salary : ${emp.calculateSalary()} Bath',
    );
  }
}
