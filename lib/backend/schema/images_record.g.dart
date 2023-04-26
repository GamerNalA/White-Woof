// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagesRecord> _$imagesRecordSerializer =
    new _$ImagesRecordSerializer();

class _$ImagesRecordSerializer implements StructuredSerializer<ImagesRecord> {
  @override
  final Iterable<Type> types = const [ImagesRecord, _$ImagesRecord];
  @override
  final String wireName = 'ImagesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dispayImage;
    if (value != null) {
      result
        ..add('dispay_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ts;
    if (value != null) {
      result
        ..add('ts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ImagesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dispay_image':
          result.dispayImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ts':
          result.ts = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ImagesRecord extends ImagesRecord {
  @override
  final String? uid;
  @override
  final String? name;
  @override
  final String? dispayImage;
  @override
  final DateTime? ts;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImagesRecord([void Function(ImagesRecordBuilder)? updates]) =>
      (new ImagesRecordBuilder()..update(updates))._build();

  _$ImagesRecord._({this.uid, this.name, this.dispayImage, this.ts, this.ffRef})
      : super._();

  @override
  ImagesRecord rebuild(void Function(ImagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagesRecordBuilder toBuilder() => new ImagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagesRecord &&
        uid == other.uid &&
        name == other.name &&
        dispayImage == other.dispayImage &&
        ts == other.ts &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, dispayImage.hashCode);
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImagesRecord')
          ..add('uid', uid)
          ..add('name', name)
          ..add('dispayImage', dispayImage)
          ..add('ts', ts)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImagesRecordBuilder
    implements Builder<ImagesRecord, ImagesRecordBuilder> {
  _$ImagesRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _dispayImage;
  String? get dispayImage => _$this._dispayImage;
  set dispayImage(String? dispayImage) => _$this._dispayImage = dispayImage;

  DateTime? _ts;
  DateTime? get ts => _$this._ts;
  set ts(DateTime? ts) => _$this._ts = ts;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImagesRecordBuilder() {
    ImagesRecord._initializeBuilder(this);
  }

  ImagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _name = $v.name;
      _dispayImage = $v.dispayImage;
      _ts = $v.ts;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImagesRecord;
  }

  @override
  void update(void Function(ImagesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImagesRecord build() => _build();

  _$ImagesRecord _build() {
    final _$result = _$v ??
        new _$ImagesRecord._(
            uid: uid,
            name: name,
            dispayImage: dispayImage,
            ts: ts,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
