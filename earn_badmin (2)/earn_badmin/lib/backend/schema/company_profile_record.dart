import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyProfileRecord extends FirestoreRecord {
  CompanyProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "c_id" field.
  String? _cId;
  String get cId => _cId ?? '';
  bool hasCId() => _cId != null;

  // "c_name" field.
  String? _cName;
  String get cName => _cName ?? '';
  bool hasCName() => _cName != null;

  // "primary_email" field.
  String? _primaryEmail;
  String get primaryEmail => _primaryEmail ?? '';
  bool hasPrimaryEmail() => _primaryEmail != null;

  // "contact_Email" field.
  String? _contactEmail;
  String get contactEmail => _contactEmail ?? '';
  bool hasContactEmail() => _contactEmail != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "c_address" field.
  String? _cAddress;
  String get cAddress => _cAddress ?? '';
  bool hasCAddress() => _cAddress != null;

  // "contact_companyAddress" field.
  String? _contactCompanyAddress;
  String get contactCompanyAddress => _contactCompanyAddress ?? '';
  bool hasContactCompanyAddress() => _contactCompanyAddress != null;

  // "logoUrl" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  bool hasLogoUrl() => _logoUrl != null;

  // "verification" field.
  CompanyVerificationStruct? _verification;
  CompanyVerificationStruct get verification =>
      _verification ?? CompanyVerificationStruct();
  bool hasVerification() => _verification != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "is_recommended" field.
  bool? _isRecommended;
  bool get isRecommended => _isRecommended ?? false;
  bool hasIsRecommended() => _isRecommended != null;

  // "view" field.
  int? _view;
  int get view => _view ?? 0;
  bool hasView() => _view != null;

  void _initializeFields() {
    _cId = snapshotData['c_id'] as String?;
    _cName = snapshotData['c_name'] as String?;
    _primaryEmail = snapshotData['primary_email'] as String?;
    _contactEmail = snapshotData['contact_Email'] as String?;
    _isVerified = snapshotData['is_verified'] as bool?;
    _cAddress = snapshotData['c_address'] as String?;
    _contactCompanyAddress = snapshotData['contact_companyAddress'] as String?;
    _logoUrl = snapshotData['logoUrl'] as String?;
    _verification =
        CompanyVerificationStruct.maybeFromMap(snapshotData['verification']);
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _isRecommended = snapshotData['is_recommended'] as bool?;
    _view = castToType<int>(snapshotData['view']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('companyProfile');

  static Stream<CompanyProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyProfileRecord.fromSnapshot(s));

  static Future<CompanyProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyProfileRecord.fromSnapshot(s));

  static CompanyProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyProfileRecordData({
  String? cId,
  String? cName,
  String? primaryEmail,
  String? contactEmail,
  bool? isVerified,
  String? cAddress,
  String? contactCompanyAddress,
  String? logoUrl,
  CompanyVerificationStruct? verification,
  DocumentReference? userRef,
  bool? isRecommended,
  int? view,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'c_id': cId,
      'c_name': cName,
      'primary_email': primaryEmail,
      'contact_Email': contactEmail,
      'is_verified': isVerified,
      'c_address': cAddress,
      'contact_companyAddress': contactCompanyAddress,
      'logoUrl': logoUrl,
      'verification': CompanyVerificationStruct().toMap(),
      'userRef': userRef,
      'is_recommended': isRecommended,
      'view': view,
    }.withoutNulls,
  );

  // Handle nested data for "verification" field.
  addCompanyVerificationStructData(firestoreData, verification, 'verification');

  return firestoreData;
}

class CompanyProfileRecordDocumentEquality
    implements Equality<CompanyProfileRecord> {
  const CompanyProfileRecordDocumentEquality();

  @override
  bool equals(CompanyProfileRecord? e1, CompanyProfileRecord? e2) {
    return e1?.cId == e2?.cId &&
        e1?.cName == e2?.cName &&
        e1?.primaryEmail == e2?.primaryEmail &&
        e1?.contactEmail == e2?.contactEmail &&
        e1?.isVerified == e2?.isVerified &&
        e1?.cAddress == e2?.cAddress &&
        e1?.contactCompanyAddress == e2?.contactCompanyAddress &&
        e1?.logoUrl == e2?.logoUrl &&
        e1?.verification == e2?.verification &&
        e1?.userRef == e2?.userRef &&
        e1?.isRecommended == e2?.isRecommended &&
        e1?.view == e2?.view;
  }

  @override
  int hash(CompanyProfileRecord? e) => const ListEquality().hash([
        e?.cId,
        e?.cName,
        e?.primaryEmail,
        e?.contactEmail,
        e?.isVerified,
        e?.cAddress,
        e?.contactCompanyAddress,
        e?.logoUrl,
        e?.verification,
        e?.userRef,
        e?.isRecommended,
        e?.view
      ]);

  @override
  bool isValidKey(Object? o) => o is CompanyProfileRecord;
}
