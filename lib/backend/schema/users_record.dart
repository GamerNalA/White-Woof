import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  bool? get memory;

  int? get cookies;

  @BuiltValueField(wireName: 'Full_name')
  String? get fullName;

  @BuiltValueField(wireName: 'short_bio')
  String? get shortBio;

  @BuiltValueField(wireName: 'cookie_shipping')
  double? get cookieShipping;

  @BuiltValueField(wireName: 'ImageSaves')
  int? get imageSaves;

  bool? get accountSetup;

  bool? get emailVer;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..memory = false
    ..cookies = 0
    ..fullName = ''
    ..shortBio = ''
    ..cookieShipping = 0.0
    ..imageSaves = 0
    ..accountSetup = false
    ..emailVer = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? memory,
  int? cookies,
  String? fullName,
  String? shortBio,
  double? cookieShipping,
  int? imageSaves,
  bool? accountSetup,
  bool? emailVer,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..memory = memory
        ..cookies = cookies
        ..fullName = fullName
        ..shortBio = shortBio
        ..cookieShipping = cookieShipping
        ..imageSaves = imageSaves
        ..accountSetup = accountSetup
        ..emailVer = emailVer,
    ),
  );

  return firestoreData;
}
