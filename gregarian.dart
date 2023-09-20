

int dayOfYear(String date) {
  // Parse the input date into a DateTime object
  DateTime dateTime = DateTime.parse(date);

  // Calculate the day of the year
  int day = dateTime.difference(DateTime(dateTime.year, 1, 1)).inDays + 1;

  return day;
}

void main() {
  String inputDate = "2019-02-10";
  int day = dayOfYear(inputDate);
  print("Output: $day");
}
