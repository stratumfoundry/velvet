import 'package:velvet_support/src/extensions/string/check_on_string_extension.dart';

extension EnsureOnStringExtension on String {
  /// Ensures that the string starts with the specified [prefix].
  ///
  /// If the string does not start with the [prefix], it is prepended to the string.
  /// Otherwise, the original string is returned.
  ///
  /// Returns the modified string.
  String ensureStartsWith(String prefix, {bool ignoreCase = false}) {
    if (!doesStartsWith(prefix, ignoreCase: ignoreCase)) {
      return prefix + this;
    }

    return this;
  }

  /// Ensures that the string ends with the specified [suffix].
  ///
  /// If the string does not already end with the [suffix], it appends the [suffix] to the string and returns the modified string.
  /// If the string already ends with the [suffix], it returns the original string.
  String ensureEndsWith(String suffix, {bool ignoreCase = false}) {
    if (!doesEndsWith(suffix, ignoreCase: ignoreCase)) {
      return this + suffix;
    }

    return this;
  }

  /// Ensures that the string does not start with the specified [prefix].
  /// If the string starts with the [prefix], it is removed from the string.
  /// Otherwise, the original string is returned.
  String ensureDoesNotStartWith(String prefix, {bool ignoreCase = false}) {
    if (doesStartsWith(prefix, ignoreCase: ignoreCase)) {
      return substring(prefix.length);
    }

    return this;
  }

  /// Ensures that the string does not end with the specified [suffix].
  /// If the string ends with the [suffix], it is removed from the string.
  /// Otherwise, the original string is returned.
  String ensureDoesNotEndWith(String suffix, {bool ignoreCase = false}) {
    if (doesEndsWith(suffix, ignoreCase: ignoreCase)) {
      return substring(0, length - suffix.length);
    }

    return this;
  }

  /// Ensures that the string is wrapped with the specified [wrapper].
  ///
  /// If the string does not start with the [wrapper], it is prepended to the string.
  /// If the string does not end with the [wrapper], it is appended to the string.
  /// Otherwise, the original string is returned.
  String ensureWrappedWith(String wrapper, {bool ignoreCase = false}) {
    return ensureStartsWith(wrapper, ignoreCase: ignoreCase)
        .ensureEndsWith(wrapper, ignoreCase: ignoreCase);
  }

  /// Ensures that the string is wrapped with single quotes.
  ///
  /// Returns the modified string.
  String ensureWrappedWithSingleQuotes() {
    return ensureStartsWith("'").ensureEndsWith("'");
  }

  /// Ensures that the string is wrapped with double quotes.
  ///
  /// Returns the string with double quotes added at the beginning and end.
  String ensureWrappedWithDoubleQuotes() {
    return ensureStartsWith('"').ensureEndsWith('"');
  }

  /// Ensures that the string is wrapped with parentheses.
  ///
  /// Returns a new string that starts with '(' and ends with ')'.
  String ensureWrappedWithParentheses() {
    return ensureStartsWith('(').ensureEndsWith(')');
  }

  /// Ensures that the string is wrapped with brackets.
  ///
  /// Returns the modified string that starts with '[' and ends with ']'.
  String ensureWrappedWithBrackets() {
    return ensureStartsWith('[').ensureEndsWith(']');
  }

  /// Ensures that the string is wrapped with braces.
  ///
  /// Returns a new string that starts with '{' and ends with '}'.
  String ensureWrappedWithBraces() {
    return ensureStartsWith('{').ensureEndsWith('}');
  }

  /// Ensures that the string is wrapped with angle brackets.
  ///
  /// Returns the modified string.
  String ensureWrappedWithAngleBrackets() {
    return ensureStartsWith('<').ensureEndsWith('>');
  }

  /// Ensures that the string is wrapped with chevrons.
  ///
  /// Returns the modified string that starts with '«' and ends with '»'.
  String ensureWrappedWithChevrons() {
    return ensureStartsWith('«').ensureEndsWith('»');
  }

  /// Ensures that the string is wrapped with curly quotes.
  /// Returns the modified string that starts with '“' and ends with '”'.
  String ensureWrappedWithCurlyQuotes() {
    return ensureStartsWith('“').ensureEndsWith('”');
  }

  String ensureNotWrappedWith(String wrapper, {bool ignoreCase = false}) {
    return ensureDoesNotStartWith(wrapper, ignoreCase: ignoreCase)
        .ensureDoesNotEndWith(wrapper, ignoreCase: ignoreCase);
  }
}
