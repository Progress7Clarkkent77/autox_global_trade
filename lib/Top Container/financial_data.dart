import 'dart:math';

class FinancialDataGenerator {
  static final Random _random = Random();

  static double generateRandomPrice() {
    // Generate a random price between 10 and 100
    return 10 + _random.nextDouble() * 90;
  }

  static double generateRandomPercentage() {
    // Generate a random percentage between -5% and 5%
    double percentage = (_random.nextDouble() - 0.5) * 10;

    // Check if the percentage is negative
    bool isNegative = percentage < 0;

    // If negative, print in red
    if (isNegative) {
      print('\x1B[31m${percentage.toStringAsFixed(2)}%\x1B[0m'); // Red text
    } else {
      print('${percentage.toStringAsFixed(2)}%');
    }

    return percentage;
  }
}

void main() {
  // Example usage
  FinancialDataGenerator.generateRandomPercentage();
}
