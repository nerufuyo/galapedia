import 'package:flutter/material.dart';

// API Key
const String baseUrl = 'https://api.nasa.gov/';
const String apiKey = 'IFP7Qj2LTbyg466j43hyCJfKNyib5HXrmvWVxmB0';

// Enum State
enum RequestState { empty, loading, loaded, error }

// Exception
class ServerException implements Exception {}

// Content Space
class ContentSpace extends StatelessWidget {
  const ContentSpace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 24);
  }
}
