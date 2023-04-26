import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feedback_record.g.dart';

abstract class FeedbackRecord
    implements Built<FeedbackRecord, FeedbackRecordBuilder> {
  static Serializer<FeedbackRecord> get serializer =>
      _$feedbackRecordSerializer;

  String? get title;

  String? get description;

  String? get image;

  DateTime? get ts;

  String? get username;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FeedbackRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..image = ''
    ..username = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FeedbackRecord._();
  factory FeedbackRecord([void Function(FeedbackRecordBuilder) updates]) =
      _$FeedbackRecord;

  static FeedbackRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFeedbackRecordData({
  String? title,
  String? description,
  String? image,
  DateTime? ts,
  String? username,
}) {
  final firestoreData = serializers.toFirestore(
    FeedbackRecord.serializer,
    FeedbackRecord(
      (f) => f
        ..title = title
        ..description = description
        ..image = image
        ..ts = ts
        ..username = username,
    ),
  );

  return firestoreData;
}
