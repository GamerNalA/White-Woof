import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'version_record.g.dart';

abstract class VersionRecord
    implements Built<VersionRecord, VersionRecordBuilder> {
  static Serializer<VersionRecord> get serializer => _$versionRecordSerializer;

  String? get version;

  DateTime? get ts;

  @BuiltValueField(wireName: 'LinkIOS')
  String? get linkIOS;

  String? get linkAndroid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VersionRecordBuilder builder) => builder
    ..version = ''
    ..linkIOS = ''
    ..linkAndroid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('version');

  static Stream<VersionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VersionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VersionRecord._();
  factory VersionRecord([void Function(VersionRecordBuilder) updates]) =
      _$VersionRecord;

  static VersionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVersionRecordData({
  String? version,
  DateTime? ts,
  String? linkIOS,
  String? linkAndroid,
}) {
  final firestoreData = serializers.toFirestore(
    VersionRecord.serializer,
    VersionRecord(
      (v) => v
        ..version = version
        ..ts = ts
        ..linkIOS = linkIOS
        ..linkAndroid = linkAndroid,
    ),
  );

  return firestoreData;
}
