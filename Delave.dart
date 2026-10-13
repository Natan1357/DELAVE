void main() {
  print('=== STUDENT GRADE EVALUATOR ===');

  String input = '150';

  try {
    int grade = int.parse(input);
    String result = evaluateGrade(grade);
    print('\n$result');
  } catch (e) {
    print('\nInvalid input! Please enter a valid whole number.');
  }
}

String evaluateGrade(int grade) {
  if (grade < 0 || grade > 100) {
    return 'Error: Grade must be between 0 and 100.';
  }

  String result;

  if (grade >= 75) {
    result = 'Congratulations! You passed.';
  } else {
    result = 'You did not pass. Please try again.';
  }

  print('\nChecking your grade...');

  for (int i = 1; i <= 3; i++) {
    print('Evaluation step $i');
  }

  return 'Your grade is $grade.\n$result';
}