import 'package:realm_app/model/model.dart';
import 'package:realm/realm.dart';
import 'package:realm_app/core.dart';

const String APP_ID = "pemobile-bmizy";
const String APP_URL =
    "https://realm.mongodb.com/groups/659ace95bde7574091bb8196/apps/659e8df89172ec90a449cbf0";
const bool DISCONNECTED_MODE = true;

List<SchemaObject> schemaList = [
  UserProfile.schema,
  Task.schema,
];

List<RealmBaseService> services = [
  UserProfileService.instance,
  TaskService.instance,
];
