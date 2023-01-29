// Create a Student Class, Input : From the Student Rollno : Integer type
// Name format : ajay KUmar sHaRma
// Should be converted to : Ajay Kumar Sharma 3 Subject Marks : Out of 100
// 90
// 80
// 77

// Output:
// Total Marks Percentage Grade
// >=90 - A Grade
// <90 - >=70 B Grade
// <70 to >=60 C Grade
// <60 to >=50 D Grade E Grade

// CollegeName : Fixed

// College Name : All Caps Name : Proper Case Subjects
// Total Percentage Grade

// Note: You need to highlight the following concepts in your solution (via comments):
// •	Named Constructor,
// •	Setter and Getter,
// Compulsory parameter & optional parameter

class Student {
  int? RollNo;
  String? StudentName;
  final CollegeName = ("The Northcap University").toUpperCase();
  double? marks1, mar;
  double? marks2;
  double? marks3;
  double? TotalMarks;
  double? Percentage;
  String? Grade;

  Student.requiredInput(
      {required int RollNo,
      required String StudentName,
      required double marks1,
      required double marks2,
      required double marks3,
      double? TotalMarks,
      double? Percentage,
      String? Grade}) {
    this.RollNo = RollNo;
    this.StudentName = StudentName;
    this.marks1 = marks1;
    this.marks2 = marks2;
    this.marks3 = marks3;
    this.TotalMarks = TotalMarks;
    this.Percentage = Percentage;
    this.Grade = Grade;
  }

  int? get getRollNo {
    return RollNo;
  }

  String? get getStudentName {
    return StudentName;
  }

  String? get getCollegeName {
    return CollegeName;
  }

  double? get getmarks1 {
    return marks1;
  }

  double? get getmarks2 {
    return marks2;
  }

  double? get getmarks3 {
    return marks3;
  }

  double? get getTotalMarks {
    return TotalMarks;
  }

  double? get getPercentage {
    return Percentage;
  }

  String? get getGrade {
    return Grade;
  }

  set setRollNo(int rollno) {
    RollNo = rollno;
  }

  set setStudentName(String name) {
    StudentName = name;
  }

  set setmarks1(double marks1) {
    marks1 = marks1;
  }

  set setmarks2(double marks2) {
    marks2 = marks2;
  }

  set setmarks3(double marks3) {
    marks3 = marks3;
  }

  set setTotalMarks(double total) {
    TotalMarks = total;
  }

  set setPercentage(double percent) {
    Percentage = percent;
  }

  set setGrade(String grade) {
    Grade = grade;
  }

  String? GradeCalulator() {
    this.TotalMarks = marks1! + marks2! + marks3!;
    this.Percentage = (marks1! + marks2! + marks3!) / 3;

    if (this.Percentage! >= 90) {
      this.Grade = 'A';
    } else if (this.Percentage! < 90 && this.Percentage! >= 70) {
      this.Grade = 'B';
    } else if (this.Percentage! < 70 && this.Percentage! >= 60) {
      this.Grade = 'C';
    } else if (this.Percentage! < 60 && this.Percentage! >= 50) {
      this.Grade = 'D';
    } else {
      this.Grade = 'E';
    }
    return this.Grade;
  }

  String? capitalizefirst() {
    var result = this.StudentName![0].toUpperCase();
    for (int i = 1; i < this.StudentName!.length; i++) {
      if (this.StudentName![i - 1] == " ") {
        result = result + this.StudentName![i].toUpperCase();
      } else {
        result = result + this.StudentName![i].toLowerCase();
      }
    }
    this.StudentName = result;
    return this.StudentName;
  }
}

void main() {
  Student std = Student.requiredInput(
      RollNo: 20,
      StudentName: "anU KumaRI",
      marks1: 83,
      marks2: 77,
      marks3: 89);
  std.capitalizefirst();
  std.GradeCalulator();

  print("College Name : ${std.getCollegeName}");
  print("Student Name: ${std.StudentName}");
  print("Student's Total Marks: ${std.TotalMarks}");
  print("Student's Percentage: ${std.Percentage}");
  print("Student's Grade: ${std.Grade}");
}
