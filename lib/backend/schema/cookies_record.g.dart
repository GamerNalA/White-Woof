// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cookies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CookiesRecord> _$cookiesRecordSerializer =
    new _$CookiesRecordSerializer();

class _$CookiesRecordSerializer implements StructuredSerializer<CookiesRecord> {
  @override
  final Iterable<Type> types = const [CookiesRecord, _$CookiesRecord];
  @override
  final String wireName = 'CookiesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CookiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
  CookiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CookiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$CookiesRecord extends CookiesRecord {
  @override
  final String? description;
  @override
  final int? type;
  @override
  final double? price;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CookiesRecord([void Function(CookiesRecordBuilder)? updates]) =>
      (new CookiesRecordBuilder()..update(updates))._build();

  _$CookiesRecord._(
      {this.description, this.type, this.price, this.image, this.ffRef})
      : super._();

  @override
  CookiesRecord rebuild(void Function(CookiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CookiesRecordBuilder toBuilder() => new CookiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CookiesRecord &&
        description == other.description &&
        type == other.type &&
        price == other.price &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CookiesRecord')
          ..add('description', description)
          ..add('type', type)
          ..add('price', price)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CookiesRecordBuilder
    implements Builder<CookiesRecord, CookiesRecordBuilder> {
  _$CookiesRecord? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CookiesRecordBuilder() {
    CookiesRecord._initializeBuilder(this);
  }

  CookiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _type = $v.type;
      _price = $v.price;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CookiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CookiesRecord;
  }

  @override
  void update(void Function(CookiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CookiesRecord build() => _build();

  _$CookiesRecord _build() {
    final _$result = _$v ??
        new _$CookiesRecord._(
            description: description,
            type: type,
            price: price,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
