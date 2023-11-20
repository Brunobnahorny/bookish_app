abstract class AppEnv {
  static String get _gcpApiToken => const String.fromEnvironment('AUTH_TOKEN');

  /// GCP books API authorized credential key
  static String? get gcpApiToken => _gcpApiToken.isEmpty ? null : _gcpApiToken;
}
