int test(int number) {
  print(number);
  return number;
}

void main() {
  int str = test(1); // 즉시 실행
  
  late int str2;
  str2  = test(2); // 이 시점에서야 비로소 test(2)가 실행되고 2가 출력됩니다.
}