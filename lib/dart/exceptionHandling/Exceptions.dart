abstract class CustomException implements Exception {
  String errorMessage();
}

// Custom exception classes implementing the interface
class MaxRangeException implements CustomException {
  @override
  String errorMessage() => "Enter an element less than 100000";
}

class NegativeNumberElement implements CustomException {
  @override
  String errorMessage() => "Enter an element greater than 0";
}

class ZeroDenominator implements CustomException {
  @override
  String errorMessage() => "Denominator should not be 0";
}
