/// Задача 7: Вычисление корня любой заданной степени из числа,
/// как extension-метод для num.
/// При ошибках бросать исключение с описанием ошибки.

extension RootInNumber on num {
  num rootInNumber(int degree) {
    if (this > 0) {
      const double eps = 0.001;
      double root = this / degree;
      double rn = this.toDouble();
      int counter = 0;
      while ((root - rn).abs() >= eps) {
        rn = this.toDouble();
        for (int i = 1; i < degree; i++) {
          rn = rn / root;
        }
        root = 0.5 * (rn + root);
        counter++;
      }
      return root;
    } else {
      throw Exception("Используйте число больше 0");
    }
  }
}
