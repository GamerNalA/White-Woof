import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'image_prices_record.g.dart';

abstract class ImagePricesRecord
    implements Built<ImagePricesRecord, ImagePricesRecordBuilder> {
  static Serializer<ImagePricesRecord> get serializer =>
      _$imagePricesRecordSerializer;

  String? get imagesANDsaves;

  String? get additionalSaves;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImagePricesRecordBuilder builder) => builder
    ..imagesANDsaves = ''
    ..additionalSaves = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imagePrices');

  static Stream<ImagePricesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImagePricesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImagePricesRecord._();
  factory ImagePricesRecord([void Function(ImagePricesRecordBuilder) updates]) =
      _$ImagePricesRecord;

  static ImagePricesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImagePricesRecordData({
  String? imagesANDsaves,
  String? additionalSaves,
}) {
  final firestoreData = serializers.toFirestore(
    ImagePricesRecord.serializer,
    ImagePricesRecord(
      (i) => i
        ..imagesANDsaves = imagesANDsaves
        ..additionalSaves = additionalSaves,
    ),
  );

  return firestoreData;
}
