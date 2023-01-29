// Implement the following Functions:
// These Functions are working on Number System
// a)	Decimal Number - Binary Conversion
// b)	Binary Number - Decimal Conversion
// c)	Decimal Number - Octal Conversion
// d)	Octal number - Decimal Conversion
// e)	Octal Number - Binary Conversion
// f)	Decimal Number - Hexa Conversion
// g)	Hexa Number - Decimal Conversion
// h)	Hexa Number - Binary Conversion

// 	Create an Outer / Wrapper Function called e.g NS().
// 	NS Contains functions from (a) to (h) and based on the argument u pass to NS() function it return the required function, After getting the required function from NS(), we pass that function to printNS() function , this function is responsible to invoke the required Number System Function and get the result and return that result to the main function.
// 	The Base 2,8,16 is the common thing for all the Number System Functions. Main() will print the final result.

// Note: You need to highlight the following concepts in your solution (via comments):
// •	Outer & Inner function concept
// •	Callback Functions
// •	Function returning function.
// •	Closure Property

import 'dart:io';

void main() {
  print(
      "Choose from a to h - \n a)	Decimal Number - Binary Conversion\n b)	Binary Number - Decimal Conversion\n c)	Decimal Number - Octal Conversion\n d)	Octal number - Decimal Conversion\n e)	Octal Number - Binary Conversion\n f)	Decimal Number - Hexa Conversion\n g)	Hexa Number - Decimal Conversion\n h)	Hexa Number - Binary Conversion");

  String? c = stdin.readLineSync();
  String i = c.toString();
  print("Enter the number for conversion ");
  String? number = stdin.readLineSync();
  int n = int.parse(number.toString());

  print(NS(i, n));
}

String NS(String option, int number) {
  Map<String, Function> convertedno = printNS();

  if (option == "a") {
    return "The binary form of $number is: ${convertedno["a"]!(number)}";
  } else if (option == "b") {
    return "The decimal form of $number is: ${convertedno["b"]!(number)}";
  } else if (option == "c") {
    return "The octal form of $number is: ${convertedno["c"]!(number)}";
  } else if (option == "d") {
    return "The decimal form of $number is: ${convertedno["d"]!(number)}";
  } else if (option == "e") {
    return "The binary form of $number is: ${convertedno["e"]!(number)}";
  } else if (option == "f") {
    return "The hexadecimal form of $number is: ${convertedno["f"]!(number)}";
  } else if (option == "g") {
    return "The decimal form of $number is: ${convertedno["g"]!(number)}";
  } else if (option == "h") {
    return "The binary form of $number is: ${convertedno["h"]!(number)}";
  } else {
    return "";
  }
}

Map<String, Function> printNS() {
  Function a = (int x) {
    String y = x.toRadixString(2);
    int z = int.parse(y);
    return z;
  };
  Function b = (int x) {
    String y = x.toRadixString(2);
    int z = int.parse(y);
    return z;
  };
  Function c = (int x) {
    String y = x.toRadixString(8);
    int z = int.parse(y);
    return z;
  };
  Function d = (int x) {
    String y = x.toRadixString(8);
    int z = int.parse(y);
    return z;
  };
  Function e = (int x) {
    String y = x.toString();
    String z = int.parse(y, radix: 8).toRadixString(2);
    int t = int.parse(z);
    return t;
  };
  Function f = (int x) {
    String y = x.toRadixString(16);
    int z = int.parse(y);
    return z;
  };
  Function g = (int x) {
    String y = x.toRadixString(16);
    int z = int.parse(y);
    return z;
  };
  Function h = (int x) {
    String y = x.toString();
    String z = int.parse(y, radix: 16).toRadixString(2);
    int t = int.parse(z);
    return t;
  };

  return {"a": a, "b": b, "c": c, "d": d, "e": e, "f": f, "g": g, "h": h};
}
