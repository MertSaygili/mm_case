//* Date Extension

// gets the short date, day, month and year

extension DateExtension on DateTime {
  String get getShortDate => '$day.$month.$year';
}
