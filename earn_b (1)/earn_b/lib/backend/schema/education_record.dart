import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EducationRecord extends FirestoreRecord {
  EducationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "college_university-name" field.
  String? _collegeUniversityName;
  String get collegeUniversityName => _collegeUniversityName ?? '';
  bool hasCollegeUniversityName() => _collegeUniversityName != null;

  // "associated_degree" field.
  String? _associatedDegree;
  String get associatedDegree => _associatedDegree ?? '';
  bool hasAssociatedDegree() => _associatedDegree != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "verification" field.
  EducationVerificationStruct? _verification;
  EducationVerificationStruct get verification =>
      _verification ?? EducationVerificationStruct();
  bool hasVerification() => _verification != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _collegeUniversityName = snapshotData['college_university-name'] as String?;
    _associatedDegree = snapshotData['associated_degree'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _verification =
        EducationVerificationStruct.maybeFromMap(snapshotData['verification']);
    _isVerified = snapshotData['is_verified'] as bool?;
    _address = snapshotData['address'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('education');

  static Stream<EducationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EducationRecord.fromSnapshot(s));

  static Future<EducationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EducationRecord.fromSnapshot(s));

  static EducationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EducationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EducationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EducationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EducationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EducationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEducationRecordData({
  String? collegeUniversityName,
  String? associatedDegree,
  DateTime? startDate,
  DateTime? endDate,
  EducationVerificationStruct? verification,
  bool? isVerified,
  String? address,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'college_university-name': collegeUniversityName,
      'associated_degree': associatedDegree,
      'start_date': startDate,
      'end_date': endDate,
      'verification': EducationVerificationStruct().toMap(),
      'is_verified': isVerified,
      'address': address,
      'user_ref': userRef,
    }.withoutNulls,
  );

  // Handle nested data for "verification" field.
  addEducationVerificationStructData(
      firestoreData, verification, 'verification');

  return firestoreData;
}

class EducationRecordDocumentEquality implements Equality<EducationRecord> {
  const EducationRecordDocumentEquality();

  @override
  bool equals(EducationRecord? e1, EducationRecord? e2) {
    return e1?.collegeUniversityName == e2?.collegeUniversityName &&
        e1?.associatedDegree == e2?.associatedDegree &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.verification == e2?.verification &&
        e1?.isVerified == e2?.isVerified &&
        e1?.address == e2?.address &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(EducationRecord? e) => const ListEquality().hash([
        e?.collegeUniversityName,
        e?.associatedDegree,
        e?.startDate,
        e?.endDate,
        e?.verification,
        e?.isVerified,
        e?.address,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is EducationRecord;
}
