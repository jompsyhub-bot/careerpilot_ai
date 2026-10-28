enum UrlValidation { empty, invalid, valid }

UrlValidation validateJobUrl(String input) {
  final trimmed = input.trim();
  if (trimmed.isEmpty) return UrlValidation.empty;
  final uri = Uri.tryParse(trimmed);
  if (uri == null) return UrlValidation.invalid;
  if (!uri.hasScheme || !(uri.scheme == 'http' || uri.scheme == 'https')) {
    return UrlValidation.invalid;
  }
  if (!uri.hasAuthority || uri.host.isEmpty) return UrlValidation.invalid;
  return UrlValidation.valid;
}
