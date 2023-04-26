import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _memory = await secureStorage.getBool('ff_memory') ?? _memory;
    _cartsum = await secureStorage.getDouble('ff_cartsum') ?? _cartsum;
    _cookiesum = await secureStorage.getInt('ff_cookiesum') ?? _cookiesum;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _memory = false;
  bool get memory => _memory;
  set memory(bool _value) {
    _memory = _value;
    secureStorage.setBool('ff_memory', _value);
  }

  void deleteMemory() {
    secureStorage.delete(key: 'ff_memory');
  }

  bool _memory1 = false;
  bool get memory1 => _memory1;
  set memory1(bool _value) {
    _memory1 = _value;
  }

  double _cartsum = 0.0;
  double get cartsum => _cartsum;
  set cartsum(double _value) {
    _cartsum = _value;
    secureStorage.setDouble('ff_cartsum', _value);
  }

  void deleteCartsum() {
    secureStorage.delete(key: 'ff_cartsum');
  }

  int _cookiesum = 0;
  int get cookiesum => _cookiesum;
  set cookiesum(int _value) {
    _cookiesum = _value;
    secureStorage.setInt('ff_cookiesum', _value);
  }

  void deleteCookiesum() {
    secureStorage.delete(key: 'ff_cookiesum');
  }

  bool _listandEditvis = true;
  bool get listandEditvis => _listandEditvis;
  set listandEditvis(bool _value) {
    _listandEditvis = _value;
  }

  String _versionapp = '1.0.0';
  String get versionapp => _versionapp;
  set versionapp(String _value) {
    _versionapp = _value;
  }

  String _appDownloadLink = '';
  String get appDownloadLink => _appDownloadLink;
  set appDownloadLink(String _value) {
    _appDownloadLink = _value;
  }

  bool _listAndEditVisimg = true;
  bool get listAndEditVisimg => _listAndEditVisimg;
  set listAndEditVisimg(bool _value) {
    _listAndEditVisimg = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
