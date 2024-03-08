double divide(int a, int b) {
  if (b == 0) {
    throw IntegerDivisionByZeroException();
  }
  return a / b;
}

void main() {
  int a = 10;
  int b = 0;
  try {
    double result = divide(a, b);
    print("Result: $result");
  } catch (e) {
    print("Error: Division by zero.");
  }
}
