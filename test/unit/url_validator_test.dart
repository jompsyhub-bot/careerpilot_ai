import 'package:flutter_test/flutter_test.dart';
import 'package:careerpilot_ai/features/job_import/domain/url_validator.dart';

void main() {
  group('validateJobUrl', () {
    test('empty input', () {
      expect(validateJobUrl(''), UrlValidation.empty);
      expect(validateJobUrl('   '), UrlValidation.empty);
    });

    test('invalid values', () {
      expect(validateJobUrl('hello'), UrlValidation.invalid);
      expect(validateJobUrl('example.com/jobs'), UrlValidation.invalid);
      expect(validateJobUrl('ftp://example.com'), UrlValidation.invalid);
      expect(validateJobUrl('https://'), UrlValidation.invalid);
    });

    test('valid URLs', () {
      expect(validateJobUrl('https://example.com/jobs'), UrlValidation.valid);
      expect(validateJobUrl('http://careers.acme.com/role/123'),
          UrlValidation.valid);
      expect(
          validateJobUrl('  https://example.com/jobs  '), UrlValidation.valid);
    });
  });
}
