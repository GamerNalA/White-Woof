// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_prices_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagePricesRecord> _$imagePricesRecordSerializer =
    new _$ImagePricesRecordSerializer();

class _$ImagePricesRecordSerializer
    implements StructuredSerializer<ImagePricesRecord> {
  @override
  final Iterable<Type> types = const [ImagePricesRecord, _$ImagePricesRecord];
  @override
  final String wireName = 'ImagePricesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImagePricesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imagesANDsaves;
    if (value != null) {
      result
        ..add('imagesANDsaves')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.additionalSaves;
    if (value != null) {
      result
        ..add('additionalSaves')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ImagePricesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagePricesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imagesANDsaves':
          result.imagesANDsaves = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'additionalSaves':
          result.additionalSaves = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImagePricesRecord extends ImagePricesRecord {
  @override
  final String? imagesANDsaves;
  @override
  final String? additionalSaves;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImagePricesRecord(
          [void Function(ImagePricesRecordBuilder)? updates]) =>
      (new ImagePricesRecordBuilder()..update(updates))._build();

  _$ImagePricesRecord._({this.imagesANDsaves, this.additionalSaves, this.ffRef})
      : super._();

  @override
  ImagePricesRecord rebuild(void Function(ImagePricesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagePricesRecordBuilder toBuilder() =>
      new ImagePricesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagePricesRecord &&
        imagesANDsaves == other.imagesANDsaves &&
        additionalSaves == other.additionalSaves &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imagesANDsaves.hashCode);
    _$hash = $jc(_$hash, additionalSaves.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImagePricesRecord')
          ..add('imagesANDsaves', imagesANDsaves)
          ..add('additionalSaves', additionalSaves)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImagePricesRecordBuilder
    implements Builder<ImagePricesRecord, ImagePricesRecordBuilder> {
  _$ImagePricesRecord? _$v;

  String? _imagesANDsaves;
  String? get imagesANDsaves => _$this._imagesANDsaves;
  set imagesANDsaves(String? imagesANDsaves) =>
      _$this._imagesANDsaves = imagesANDsaves;

  String? _additionalSaves;
  String? get additionalSaves => _$this._additionalSaves;
  set additionalSaves(String? additionalSaves) =>
      _$this._additionalSaves = additionalSaves;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImagePricesRecordBuilder() {
    ImagePricesRecord._initializeBuilder(this);
  }

  ImagePricesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imagesANDsaves = $v.imagesANDsaves;
      _additionalSaves = $v.additionalSaves;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagePricesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImagePricesRecord;
  }

  @override
  void update(void Function(ImagePricesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImagePricesRecord build() => _build();

  _$ImagePricesRecord _build() {
    final _$result = _$v ??
        new _$ImagePricesRecord._(
            imagesANDsaves: imagesANDsaves,
            additionalSaves: additionalSaves,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
