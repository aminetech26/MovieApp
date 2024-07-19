extension StringExtension on String {
  String intellTrim() {
    return length > 15 ? '${substring(0, 15)}...' : this;
  }
}
