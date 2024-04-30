import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ExperienceRecord extends FirestoreRecord {
  ExperienceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "company_positionName" field.
  String? _companyPositionName;
  String get companyPositionName => _companyPositionName ?? '';
  bool hasCompanyPositionName() => _companyPositionName != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "company_Address" field.
  String? _companyAddress;
  String get companyAddress => _companyAddress ?? '';
  bool hasCompanyAddress() => _companyAddress != null;

  // "verification" field.
  ExperienceVerificationStruct? _verification;
  ExperienceVerificationStruct get verification =>
      _verification ?? ExperienceVerificationStruct();
  bool hasVerification() => _verification != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "profileRef" field.
  DocumentReference? _profileRef;
  DocumentReference? get profileRef => _profileRef;
  bool hasProfileRef() => _profileRef != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _companyName = snapshotData['company_name'] as String?;
    _companyPositionName = snapshotData['company_positionName'] as String?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _isVerified = snapshotData['is_verified'] as bool?;
    _companyAddress = snapshotData['company_Address'] as String?;
    _verification =
        ExperienceVerificationStruct.maybeFromMap(snapshotData['verification']);
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _profileRef = snapshotData['profileRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('experience');

  static Stream<ExperienceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExperienceRecord.fromSnapshot(s));

  static Future<ExperienceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExperienceRecord.fromSnapshot(s));

  static ExperienceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExperienceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExperienceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExperienceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExperienceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExperienceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExperienceRecordData({
  String? id,
  String? companyName,
  String? companyPositionName,
  DateTime? endDate,
  DateTime? startDate,
  bool? isVerified,
  String? companyAddress,
  ExperienceVerificationStruct? verification,
  DocumentReference? userRef,
  DocumentReference? profileRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'company_name': companyName,
      'company_positionName': companyPositionName,
      'endDate': endDate,
      'startDate': startDate,
      'is_verified': isVerified,
      'company_Address': companyAddress,
      'verification': ExperienceVerificationStruct().toMap(),
      'userRef': userRef,
      'profileRef': profileRef,
    }.withoutNulls,
  );

  // Handle nested data for "verification" field.
  addExperienceVerificationStructData(
      firestoreData, verification, 'verification');

  return firestoreData;
}

class ExperienceRecordDocumentEquality implements Equality<ExperienceRecord> {
  const ExperienceRecordDocumentEquality();

  @override
  bool equals(ExperienceRecord? e1, ExperienceRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.companyName == e2?.companyName &&
        e1?.companyPositionName == e2?.companyPositionName &&
        e1?.endDate == e2?.endDate &&
        e1?.startDate == e2?.startDate &&
        e1?.isVerified == e2?.isVerified &&
        e1?.companyAddress == e2?.companyAddress &&
        e1?.verification == e2?.verification &&
        e1?.userRef == e2?.userRef &&
        e1?.profileRef == e2?.profileRef;
  }

  @override
  int hash(ExperienceRecord? e) => const ListEquality().hash([
        e?.id,
        e?.companyName,
        e?.companyPositionName,
        e?.endDate,
        e?.startDate,
        e?.isVerified,
        e?.companyAddress,
        e?.verification,
        e?.userRef,
        e?.profileRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ExperienceRecord;
}
