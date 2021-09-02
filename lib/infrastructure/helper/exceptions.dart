class DefaultException implements Exception {
  final String? _message;

  DefaultException(this._message);
  @override
  String toString() => _message ?? "No internet connection";
}

class NoInternetException extends DefaultException {
  NoInternetException() : super('No internet connection');
}

class UnknownException extends DefaultException {
  UnknownException(e) : super(e != null ? e.toString() : 'Unknown error, please report this to us');
}

class TimeoutException extends DefaultException {
  TimeoutException() : super('Request timeout, please try again');
}

class ApiResponseNotValidException extends DefaultException {
  ApiResponseNotValidException() : super('Server error, please report this to us');
}

class ServerException implements Exception {
  final int? statusCode;
  final String? message;

  ServerException({this.statusCode, required this.message});
  @override
  String toString() => 'Server exception: $message';
}
