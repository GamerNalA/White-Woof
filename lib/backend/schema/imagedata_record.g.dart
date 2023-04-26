// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagedata_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagedataRecord> _$imagedataRecordSerializer =
    new _$ImagedataRecordSerializer();

class _$ImagedataRecordSerializer
    implements StructuredSerializer<ImagedataRecord> {
  @override
  final Iterable<Type> types = const [ImagedataRecord, _$ImagedataRecord];
  @override
  final String wireName = 'ImagedataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImagedataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
    value = object.prompt;
    if (value != null) {
      result
        ..add('prompt')
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
  ImagedataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagedataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prompt':
          result.prompt = serializers.deserialize(value,
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

class _$ImagedataRecord extends ImagedataRecord {
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? prompt;
  @override
  final DateTime? ts;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImagedataRecord([void Function(ImagedataRecordBuilder)? updates]) =>
      (new ImagedataRecordBuilder()..update(updates))._build();

  _$ImagedataRecord._({this.image, this.name, this.prompt, this.ts, this.ffRef})
      : super._();

  @override
  ImagedataRecord rebuild(void Function(ImagedataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagedataRecordBuilder toBuilder() =>
      new ImagedataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagedataRecord &&
        image == other.image &&
        name == other.name &&
        prompt == other.prompt &&
        ts == other.ts &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, prompt.hashCode);
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImagedataRecord')
          ..add('image', image)
          ..add('name', name)
          ..add('prompt', prompt)
          ..add('ts', ts)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImagedataRecordBuilder
    implements Builder<ImagedataRecord, ImagedataRecordBuilder> {
  _$ImagedataRecord? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _prompt;
  String? get prompt => _$this._prompt;
  set prompt(String? prompt) => _$this._prompt = prompt;

  DateTime? _ts;
  DateTime? get ts => _$this._ts;
  set ts(DateTime? ts) => _$this._ts = ts;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImagedataRecordBuilder() {
    ImagedataRecord._initializeBuilder(this);
  }

  ImagedataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _name = $v.name;
      _prompt = $v.prompt;
      _ts = $v.ts;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagedataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImagedataRecord;
  }

  @override
  void update(void Function(ImagedataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImagedataRecord build() => _build();

  _$ImagedataRecord _build() {
    final _$result = _$v ??
        new _$ImagedataRecord._(
            image: image, name: name, prompt: prompt, ts: ts, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
