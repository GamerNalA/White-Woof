// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VersionRecord> _$versionRecordSerializer =
    new _$VersionRecordSerializer();

class _$VersionRecordSerializer implements StructuredSerializer<VersionRecord> {
  @override
  final Iterable<Type> types = const [VersionRecord, _$VersionRecord];
  @override
  final String wireName = 'VersionRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VersionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.version;
    if (value != null) {
      result
        ..add('version')
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
    value = object.linkIOS;
    if (value != null) {
      result
        ..add('LinkIOS')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkAndroid;
    if (value != null) {
      result
        ..add('linkAndroid')
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
  VersionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VersionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ts':
          result.ts = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'LinkIOS':
          result.linkIOS = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'linkAndroid':
          result.linkAndroid = serializers.deserialize(value,
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

class _$VersionRecord extends VersionRecord {
  @override
  final String? version;
  @override
  final DateTime? ts;
  @override
  final String? linkIOS;
  @override
  final String? linkAndroid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VersionRecord([void Function(VersionRecordBuilder)? updates]) =>
      (new VersionRecordBuilder()..update(updates))._build();

  _$VersionRecord._(
      {this.version, this.ts, this.linkIOS, this.linkAndroid, this.ffRef})
      : super._();

  @override
  VersionRecord rebuild(void Function(VersionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VersionRecordBuilder toBuilder() => new VersionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VersionRecord &&
        version == other.version &&
        ts == other.ts &&
        linkIOS == other.linkIOS &&
        linkAndroid == other.linkAndroid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, linkIOS.hashCode);
    _$hash = $jc(_$hash, linkAndroid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VersionRecord')
          ..add('version', version)
          ..add('ts', ts)
          ..add('linkIOS', linkIOS)
          ..add('linkAndroid', linkAndroid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VersionRecordBuilder
    implements Builder<VersionRecord, VersionRecordBuilder> {
  _$VersionRecord? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  DateTime? _ts;
  DateTime? get ts => _$this._ts;
  set ts(DateTime? ts) => _$this._ts = ts;

  String? _linkIOS;
  String? get linkIOS => _$this._linkIOS;
  set linkIOS(String? linkIOS) => _$this._linkIOS = linkIOS;

  String? _linkAndroid;
  String? get linkAndroid => _$this._linkAndroid;
  set linkAndroid(String? linkAndroid) => _$this._linkAndroid = linkAndroid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VersionRecordBuilder() {
    VersionRecord._initializeBuilder(this);
  }

  VersionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _ts = $v.ts;
      _linkIOS = $v.linkIOS;
      _linkAndroid = $v.linkAndroid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VersionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VersionRecord;
  }

  @override
  void update(void Function(VersionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VersionRecord build() => _build();

  _$VersionRecord _build() {
    final _$result = _$v ??
        new _$VersionRecord._(
            version: version,
            ts: ts,
            linkIOS: linkIOS,
            linkAndroid: linkAndroid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
