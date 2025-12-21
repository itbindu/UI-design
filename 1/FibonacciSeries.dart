void main() {
  int n = 10; // Number of terms
  int a = 0, b = 1;

  print('Fibonacci series:');
  for (int i = 1; i <= n; i++) {
    print('$a');
    int temp = a + b;
    a = b;
    b = temp;
  }
}
