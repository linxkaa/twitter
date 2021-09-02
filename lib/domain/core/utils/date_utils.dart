import 'package:intl/intl.dart';

class DateUtility {
  static final String INDONESIA_DATE_FORMAT = 'dd-MM-yyyy';

  static String getCurrentDate() {
    return DateFormat(INDONESIA_DATE_FORMAT).format(DateTime.now());
  }

  static String formatDateOnly(DateTime dt) {
    String dateFormatted = DateFormat("dd/MM/yyyy").format(dt);
    String finalDate = '';
    List<String> timeArray = dateFormatted
        .split('/')
        .map((String text) => text) // put the text inside a widget
        .toList();

    final List<String> months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember',
    ];
    for (var i = 1; i < months.length; i++) {
      if (int.parse(timeArray[1]) == i + 1) {
        finalDate = "${timeArray[0]} ${months[i]} ${timeArray[2]}";
      }
    }
    return finalDate;
  }

  static String formatHoursOnly(DateTime time) {
    String timeConverted = DateFormat("HH:mm").format(time);
    List<String> timeArray = timeConverted
        .split(':')
        .map((String text) => text) // put the text inside a widget
        .toList();
    if (int.parse(timeArray[0]) > 12) {
      return "${DateFormat("HH:mm").format(time)} PM";
    } else {
      return "${DateFormat("HH:mm").format(time)} AM";
    }
  }

  static String formatHoursAndDay(DateTime dt) {
    String dateFormatted = DateFormat("dd/MM/yyyy").format(dt);
    String finalDate = '';
    List<String> dateArray = dateFormatted
        .split('/')
        .map((String text) => text) // put the text inside a widget
        .toList();
    String timeConverted = DateFormat("HH:mm").format(dt);
    List<String> timeArray = timeConverted
        .split(':')
        .map((String text) => text) // put the text inside a widget
        .toList();

    final List<String> months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember',
    ];
    for (var i = 1; i < months.length; i++) {
      if (int.parse(dateArray[1]) == i + 1) {
        finalDate = "${dateArray[0]} ${months[i]} ${dateArray[2]}";
      }
    }
    if (int.parse(timeArray[0]) > 12) {
      return "$finalDate, ${DateFormat("HH:mm").format(dt)} WIB";
    } else {
      return "$finalDate,  ${DateFormat("HH:mm").format(dt)} WIB";
    }
  }

  static bool checkIfDayIsSame(DateTime first, DateTime second) =>
      first.day == second.day && first.month == second.month && first.year == second.year;
}
