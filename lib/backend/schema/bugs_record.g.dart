// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bugs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BugsRecord> _$bugsRecordSerializer = new _$BugsRecordSerializer();

class _$BugsRecordSerializer implements StructuredSerializer<BugsRecord> {
  @override
  final Iterable<Type> types = const [BugsRecord, _$BugsRecord];
  @override
  final String wireName = 'BugsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BugsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
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
  BugsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BugsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
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

class _$BugsRecord extends BugsRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? user;
  @override
  final DateTime? ts;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BugsRecord([void Function(BugsRecordBuilder)? updates]) =>
      (new BugsRecordBuilder()..update(updates))._build();

  _$BugsRecord._(
      {this.title,
      this.description,
      this.image,
      this.user,
      this.ts,
      this.ffRef})
      : super._();

  @override
  BugsRecord rebuild(void Function(BugsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BugsRecordBuilder toBuilder() => new BugsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BugsRecord &&
        title == other.title &&
        description == other.description &&
        image == other.image &&
        user == other.user &&
        ts == other.ts &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BugsRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('image', image)
          ..add('user', user)
          ..add('ts', ts)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BugsRecordBuilder implements Builder<BugsRecord, BugsRecordBuilder> {
  _$BugsRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  DateTime? _ts;
  DateTime? get ts => _$this._ts;
  set ts(DateTime? ts) => _$this._ts = ts;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BugsRecordBuilder() {
    BugsRecord._initializeBuilder(this);
  }

  BugsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _image = $v.image;
      _user = $v.user;
      _ts = $v.ts;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BugsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BugsRecord;
  }

  @override
  void update(void Function(BugsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BugsRecord build() => _build();

  _$BugsRecord _build() {
    final _$result = _$v ??
        new _$BugsRecord._(
            title: title,
            description: description,
            image: image,
            user: user,
            ts: ts,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
