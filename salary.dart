// Create a class employee with the properties: EmpId, EmpName, EmpDept and EmpSalary.
//Provide setter and getter methods for these properties.
//Calculate the salary as per the dept of the employee.
//All employees are entitled for basic salary 50000 with Allowances as per the dept.
// The percentage of allowances are given in the following map: {admin: 20%, teamlead:70%, technical: 60%, officestaff:10%}.

import 'dart:io';

class employee {
  int? EmpId;
  String? EmpName;
  String? EmpDept;
  double? EmpSalary;

  void setId(int EmpId) {
    this.EmpId = EmpId;
  }

  int getId() {
    return this.EmpId!.toInt();
  }

  void setName(String EmpName) {
    this.EmpName = EmpName;
  }

  String getName() {
    return this.EmpName.toString();
  }

  void setDept(String EmpDept) {
    this.EmpDept = EmpDept;
  }

  String getDept() {
    return this.EmpDept.toString();
  }

  void setSalary(double EmpSalary) {
    this.EmpSalary = EmpSalary;
  }

  double getSalary() {
    return this.EmpSalary!.toDouble();
  }

  employee() {
    this.EmpId = 123;
    this.EmpName = "Anu";
    this.EmpDept = "technical";
  }

  void calsalary() {
    String department = getDept();
    if (department == "admin") {
      double x = (50000 * 20) / 100;
      double totalsal = 50000 + x;
      setSalary(totalsal);
      print(
          "The total salary of an employee from department $department is $totalsal .");
    } else if (department == "teamlead") {
      double x = (50000 * 70) / 100;
      double totalsal = 50000 + x;
      setSalary(totalsal);
      print(
          "The total salary of an employee from department $department is $totalsal .");
    } else if (department == "technical") {
      double x = (50000 * 60) / 100;
      double totalsal = 50000 + x;
      setSalary(totalsal);
      print(
          "The total salary of an employee from department $department is $totalsal .");
    } else if (department == "officestaff") {
      double x = (50000 * 10) / 100;
      double totalsal = 50000 + x;
      setSalary(totalsal);
      print(
          "The total salary of an employee from department $department is $totalsal .");
    } else {
      print("Incorrect details");
    }
  }
}

void main() {
  employee e = employee();

  print("Please enter the employee's name : ");
  String? EmpName = stdin.readLineSync();
  e.EmpName = EmpName.toString();
  print("Enter the employee's id : ");
  String? EmpId = stdin.readLineSync();
  e.EmpId = int.parse(EmpId.toString());
  print("Enter the employee's department : ");
  String? EmpDept = stdin.readLineSync();
  e.EmpDept = EmpDept.toString();

  e.calsalary();
}
