/// Provides functions for building our route names and exposes the used
/// resource paths.
class RouteNameBuilder {
  static const activityResource = 'activity';
  static String activity() => '$activityResource';
  static String activityById(int id) => '$activityResource/$id';

  static const logActivityResource = 'log_activity';
  static String logActivity() => '$logActivityResource';

  static const activityTypeSearchResource = 'activity_type_search';
  static String activityTypeSearch() => '$activityTypeSearchResource';

  static const groupsResource = 'groups';
  static String groupsList() => '$groupsResource';
  static String groupById(int id) => '$groupsResource/$id';

  static const datePickerResource = 'date_picker';
  static String datePicker() => '$datePickerResource';
}
