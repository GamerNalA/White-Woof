import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'imagedata_record.g.dart';

abstract class ImagedataRecord
    implements Built<ImagedataRecord, ImagedataRecordBuilder> {
  static Serializer<ImagedataRecord> get serializer =>
      _$imagedataRecordSerializer;

  String? get image;

  String? get name;

  String? get prompt;

  DateTime? get ts;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ImagedataRecordBuilder builder) => builder
    ..image = ''
    ..name = ''
    ..prompt = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('imagedata')
          : FirebaseFirestore.instance.collectionGroup('imagedata');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('imagedata').doc();

  static Stream<ImagedataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImagedataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImagedataRecord._();
  factory ImagedataRecord([void Function(ImagedataRecordBuilder) updates]) =
      _$ImagedataRecord;

  static ImagedataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImagedataRecordData({
  String? image,
  String? name,
  String? prompt,
  DateTime? ts,
}) {
  final firestoreData = serializers.toFirestore(
    ImagedataRecord.serializer,
    ImagedataRecord(
      (i) => i
        ..image = image
        ..name = name
        ..prompt = prompt
        ..ts = ts,
    ),
  );

  return firestoreData;
}
