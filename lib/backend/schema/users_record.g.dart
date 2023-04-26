// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memory;
    if (value != null) {
      result
        ..add('memory')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cookies;
    if (value != null) {
      result
        ..add('cookies')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('Full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortBio;
    if (value != null) {
      result
        ..add('short_bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cookieShipping;
    if (value != null) {
      result
        ..add('cookie_shipping')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.imageSaves;
    if (value != null) {
      result
        ..add('ImageSaves')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.accountSetup;
    if (value != null) {
      result
        ..add('accountSetup')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.emailVer;
    if (value != null) {
      result
        ..add('emailVer')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'memory':
          result.memory = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'cookies':
          result.cookies = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'short_bio':
          result.shortBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cookie_shipping':
          result.cookieShipping = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ImageSaves':
          result.imageSaves = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'accountSetup':
          result.accountSetup = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'emailVer':
          result.emailVer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final bool? memory;
  @override
  final int? cookies;
  @override
  final String? fullName;
  @override
  final String? shortBio;
  @override
  final double? cookieShipping;
  @override
  final int? imageSaves;
  @override
  final bool? accountSetup;
  @override
  final bool? emailVer;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.memory,
      this.cookies,
      this.fullName,
      this.shortBio,
      this.cookieShipping,
      this.imageSaves,
      this.accountSetup,
      this.emailVer,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        memory == other.memory &&
        cookies == other.cookies &&
        fullName == other.fullName &&
        shortBio == other.shortBio &&
        cookieShipping == other.cookieShipping &&
        imageSaves == other.imageSaves &&
        accountSetup == other.accountSetup &&
        emailVer == other.emailVer &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, memory.hashCode);
    _$hash = $jc(_$hash, cookies.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, shortBio.hashCode);
    _$hash = $jc(_$hash, cookieShipping.hashCode);
    _$hash = $jc(_$hash, imageSaves.hashCode);
    _$hash = $jc(_$hash, accountSetup.hashCode);
    _$hash = $jc(_$hash, emailVer.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('memory', memory)
          ..add('cookies', cookies)
          ..add('fullName', fullName)
          ..add('shortBio', shortBio)
          ..add('cookieShipping', cookieShipping)
          ..add('imageSaves', imageSaves)
          ..add('accountSetup', accountSetup)
          ..add('emailVer', emailVer)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _memory;
  bool? get memory => _$this._memory;
  set memory(bool? memory) => _$this._memory = memory;

  int? _cookies;
  int? get cookies => _$this._cookies;
  set cookies(int? cookies) => _$this._cookies = cookies;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _shortBio;
  String? get shortBio => _$this._shortBio;
  set shortBio(String? shortBio) => _$this._shortBio = shortBio;

  double? _cookieShipping;
  double? get cookieShipping => _$this._cookieShipping;
  set cookieShipping(double? cookieShipping) =>
      _$this._cookieShipping = cookieShipping;

  int? _imageSaves;
  int? get imageSaves => _$this._imageSaves;
  set imageSaves(int? imageSaves) => _$this._imageSaves = imageSaves;

  bool? _accountSetup;
  bool? get accountSetup => _$this._accountSetup;
  set accountSetup(bool? accountSetup) => _$this._accountSetup = accountSetup;

  bool? _emailVer;
  bool? get emailVer => _$this._emailVer;
  set emailVer(bool? emailVer) => _$this._emailVer = emailVer;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _memory = $v.memory;
      _cookies = $v.cookies;
      _fullName = $v.fullName;
      _shortBio = $v.shortBio;
      _cookieShipping = $v.cookieShipping;
      _imageSaves = $v.imageSaves;
      _accountSetup = $v.accountSetup;
      _emailVer = $v.emailVer;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            memory: memory,
            cookies: cookies,
            fullName: fullName,
            shortBio: shortBio,
            cookieShipping: cookieShipping,
            imageSaves: imageSaves,
            accountSetup: accountSetup,
            emailVer: emailVer,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
