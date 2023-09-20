class Const {
    // Make constructor private to prevent instantiation
    Const._();

    static const rawgKey = const String.fromEnvironment('RAWG_KEY');
    static const apiKey = const String.fromEnvironment('X_RAPID_API_KEY');
}
