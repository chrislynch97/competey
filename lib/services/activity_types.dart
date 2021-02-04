import 'package:competey/models/activity_type.dart';

class ActivityTypes {
  static final List<ActivityType> _activityTypes = [
    ActivityType(name: 'Badminton'),
    ActivityType(name: 'Bowling'),
    ActivityType(name: 'Mario Kart'),
  ];

  static List<ActivityType> getActivityTypes({String searchValue}) {
    if (searchValue == null) return _activityTypes;

    return _activityTypes
        .where((item) =>
            item.name.toLowerCase().contains(searchValue.toLowerCase()))
        .toList();
  }
}
