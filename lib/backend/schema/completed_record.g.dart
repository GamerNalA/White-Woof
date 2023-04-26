// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompletedRecord> _$completedRecordSerializer =
    new _$CompletedRecordSerializer();

class _$CompletedRecordSerializer
    implements StructuredSerializer<CompletedRecord> {
  @override
  final Iterable<Type> types = const [CompletedRecord, _$CompletedRecord];
  @override
  final String wireName = 'CompletedRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompletedRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.userimage;
    if (value != null) {
      result
        ..add('userimage')
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
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cookieAmount;
    if (value != null) {
      result
        ..add('cookieAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
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
  CompletedRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompletedRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'userimage':
          result.userimage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ts':
          result.ts = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'cookieAmount':
          result.cookieAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
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

class _$CompletedRecord extends CompletedRecord {
  @override
  final String? username;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final String? userimage;
  @override
  final DateTime? ts;
  @override
  final double? amount;
  @override
  final int? cookieAmount;
  @override
  final String? userid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompletedRecord([void Function(CompletedRecordBuilder)? updates]) =>
      (new CompletedRecordBuilder()..update(updates))._build();

  _$CompletedRecord._(
      {this.username,
      this.userRef,
      this.userimage,
      this.ts,
      this.amount,
      this.cookieAmount,
      this.userid,
      this.ffRef})
      : super._();

  @override
  CompletedRecord rebuild(void Function(CompletedRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompletedRecordBuilder toBuilder() =>
      new CompletedRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompletedRecord &&
        username == other.username &&
        userRef == other.userRef &&
        userimage == other.userimage &&
        ts == other.ts &&
        amount == other.amount &&
        cookieAmount == other.cookieAmount &&
        userid == other.userid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, userRef.hashCode);
    _$hash = $jc(_$hash, userimage.hashCode);
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, cookieAmount.hashCode);
    _$hash = $jc(_$hash, userid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompletedRecord')
          ..add('username', username)
          ..add('userRef', userRef)
          ..add('userimage', userimage)
          ..add('ts', ts)
          ..add('amount', amount)
          ..add('cookieAmount', cookieAmount)
          ..add('userid', userid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompletedRecordBuilder
    implements Builder<CompletedRecord, CompletedRecordBuilder> {
  _$CompletedRecord? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  String? _userimage;
  String? get userimage => _$this._userimage;
  set userimage(String? userimage) => _$this._userimage = userimage;

  DateTime? _ts;
  DateTime? get ts => _$this._ts;
  set ts(DateTime? ts) => _$this._ts = ts;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  int? _cookieAmount;
  int? get cookieAmount => _$this._cookieAmount;
  set cookieAmount(int? cookieAmount) => _$this._cookieAmount = cookieAmount;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompletedRecordBuilder() {
    CompletedRecord._initializeBuilder(this);
  }

  CompletedRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _userRef = $v.userRef;
      _userimage = $v.userimage;
      _ts = $v.ts;
      _amount = $v.amount;
      _cookieAmount = $v.cookieAmount;
      _userid = $v.userid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompletedRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompletedRecord;
  }

  @override
  void update(void Function(CompletedRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompletedRecord build() => _build();

  _$CompletedRecord _build() {
    final _$result = _$v ??
        new _$CompletedRecord._(
            username: username,
            userRef: userRef,
            userimage: userimage,
            ts: ts,
            amount: amount,
            cookieAmount: cookieAmount,
            userid: userid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
