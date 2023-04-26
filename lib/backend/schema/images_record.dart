import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'images_record.g.dart';

abstract class ImagesRecord
    implements Built<ImagesRecord, ImagesRecordBuilder> {
  static Serializer<ImagesRecord> get serializer => _$imagesRecordSerializer;

  String? get uid;

  String? get name;

  @BuiltValueField(wireName: 'dispay_image')
  String? get dispayImage;

  DateTime? get ts;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImagesRecordBuilder builder) => builder
    ..uid = ''
    ..name = ''
    ..dispayImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('images');

  static Stream<ImagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImagesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImagesRecord._();
  factory ImagesRecord([void Function(ImagesRecordBuilder) updates]) =
      _$ImagesRecord;

  static ImagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImagesRecordData({
  String? uid,
  String? name,
  String? dispayImage,
  DateTime? ts,
}) {
  final firestoreData = serializers.toFirestore(
    ImagesRecord.serializer,
    ImagesRecord(
      (i) => i
        ..uid = uid
        ..name = name
        ..dispayImage = dispayImage
        ..ts = ts,
    ),
  );

  return firestoreData;
}
