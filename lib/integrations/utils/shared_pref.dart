import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> getSharedPref() async {
  return SharedPreferences.getInstance();
}

setString(key, value) async {
  var prefs = await getSharedPref();
  prefs.setString(key, value);
}

setInt(key, value) async {
  var prefs = await getSharedPref();
  prefs.setInt(key, value);
}

Future<String> getSFString(key) async {
  var prefs = await getSharedPref();
  return prefs.getString(key) ?? '';
}

Future<bool> getBoolPref(key) async {
  var prefs = await getSharedPref();
  return prefs.getBool(key) ?? false;
}

Future getPref(String key) async {
  await getSharedPref().then((pref) {
    pref.getString(key);
  });
}
