import 'dart:io';

void main() {
  print('Enter 1st number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter 2nd number: ');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Enter 3rd number: ');
  int num3 = int.parse(stdin.readLineSync()!);

  print('Enter 4th number: ');
  int num4 = int.parse(stdin.readLineSync()!);

  print('Select the Operator\n'
      '+ for Sum\n'
      '- for Subtraction\n'
      'x for Multiplication\n'
      '/ for Division');

  String operator = stdin.readLineSync()!;

  if (operator == '+') {
    int additionResult = addition(num1, num2, num3, num4);
    print('$num1 + $num2 = $additionResult');
  } else if (operator == '-') {
    int subtractionResult = subtraction(num1, num2, num3: num3, num4: num4);
    print('$num1 - $num2 = $subtractionResult');
  } else if (operator == 'x') {
    int multiplicationResult = multiplication(num1, num2, num3, num4: num4);
    print('$num1 x $num2 = $multiplicationResult');
  } else if (operator == '/') {
    double divisionResult = division(num1, num2, num3, num4);
    print('$num1 / $num2 = $divisionResult');
  } else {
    print('Wrong Operator Selected');
  }
}

int addition(int num1, int num2, int num3, [int num4 = 0]) {
  return num1 + num2 + num3 + num4;
}

int subtraction(int num1, int num2, {int num3 = 0, int num4 = 0}) {
  return num1 - num2 - num3 - num4;
}

int multiplication(int num1, int num2, int num3, {required int num4}) {
  return num1 * num2 * num3 * num4;
}

double division(int num1, int num2, int num3, int num4) {
  double result = num1 + num2 + num3 / num4;
  double to3DecimalValues = double.parse(result.toStringAsFixed(3));
  return to3DecimalValues;
}
