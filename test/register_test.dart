import 'package:protingtiga/SignUp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('empty username returns error string', () {
    final result = UsernameFieldValidator.validate('');
    expect(result, 'Username can\'t be empty');
  });

  test('non-empty username returns null', () {
    final result = UsernameFieldValidator.validate('username');
    expect(result, null);
  });
  test('empty email returns error string', () {
    final result = EmailFieldValidator.validate('');
    expect(result, 'Email can\'t be empty');
  });

  test('non-empty email returns null', () {
    final result = EmailFieldValidator.validate('email');
    expect(result, null);
  });

  test('empty password returns error string', () {
    final result = PasswordFieldValidator.validate('');
    expect(result, 'Password can\'t be empty');
  });

  test('non-empty password returns null', () {
    final result = PasswordFieldValidator.validate('password');
    expect(result, null);
  });
}
