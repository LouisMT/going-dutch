final apiBaseUrl = const String.fromEnvironment('API_BASE_URL') ?? '';
final runtimeType = const bool.fromEnvironment('dart.tool.dart2wasm')
    ? 'WASM'
    : 'JS';
