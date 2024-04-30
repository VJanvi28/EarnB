import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class EmployeeProfileRecord extends FirestoreRecord {
  EmployeeProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "contact_email" field.
  String? _contactEmail;
  String get contactEmail => _contactEmail ?? '';
  bool hasContactEmail() => _contactEmail != null;

  // "primary_email" field.
  String? _primaryEmail;
  String get primaryEmail => _primaryEmail ?? '';
  bool hasPrimaryEmail() => _primaryEmail != null;

  // "primary_phone" field.
  String? _primaryPhone;
  String get primaryPhone => _primaryPhone ?? '';
  bool hasPrimaryPhone() => _primaryPhone != null;

  // "contact_phone" field.
  String? _contactPhone;
  String get contactPhone => _contactPhone ?? '';
  bool hasContactPhone() => _contactPhone != null;

  // "primary_address" field.
  String? _primaryAddress;
  String get primaryAddress => _primaryAddress ?? '';
  bool hasPrimaryAddress() => _primaryAddress != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "applicant_type" field.
  String? _applicantType;
  String get applicantType => _applicantType ?? '';
  bool hasApplicantType() => _applicantType != null;

  // "profile_post" field.
  String? _profilePost;
  String get profilePost => _profilePost ?? '';
  bool hasProfilePost() => _profilePost != null;

  // "employee_id" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  bool hasEmployeeId() => _employeeId != null;

  // "work_exp" field.
  List<DocumentReference>? _workExp;
  List<DocumentReference> get workExp => _workExp ?? const [];
  bool hasWorkExp() => _workExp != null;

  // "education" field.
  List<DocumentReference>? _education;
  List<DocumentReference> get education => _education ?? const [];
  bool hasEducation() => _education != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "resume" field.
  DocumentReference? _resume;
  DocumentReference? get resume => _resume;
  bool hasResume() => _resume != null;

  // "resumeID" field.
  String? _resumeID;
  String get resumeID => _resumeID ?? '';
  bool hasResumeID() => _resumeID != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _contactEmail = snapshotData['contact_email'] as String?;
    _primaryEmail = snapshotData['primary_email'] as String?;
    _primaryPhone = snapshotData['primary_phone'] as String?;
    _contactPhone = snapshotData['contact_phone'] as String?;
    _primaryAddress = snapshotData['primary_address'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _applicantType = snapshotData['applicant_type'] as String?;
    _profilePost = snapshotData['profile_post'] as String?;
    _employeeId = snapshotData['employee_id'] as String?;
    _workExp = getDataList(snapshotData['work_exp']);
    _education = getDataList(snapshotData['education']);
    _isVerified = snapshotData['is_verified'] as bool?;
    _resume = snapshotData['resume'] as DocumentReference?;
    _resumeID = snapshotData['resumeID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('employeeProfile');

  static Stream<EmployeeProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeeProfileRecord.fromSnapshot(s));

  static Future<EmployeeProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmployeeProfileRecord.fromSnapshot(s));

  static EmployeeProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeeProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeeProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeeProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeeProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeeProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmployeeProfileRecordData({
  String? name,
  String? email,
  String? contactEmail,
  String? primaryEmail,
  String? primaryPhone,
  String? contactPhone,
  String? primaryAddress,
  DocumentReference? userRef,
  String? applicantType,
  String? profilePost,
  String? employeeId,
  bool? isVerified,
  DocumentReference? resume,
  String? resumeID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'contact_email': contactEmail,
      'primary_email': primaryEmail,
      'primary_phone': primaryPhone,
      'contact_phone': contactPhone,
      'primary_address': primaryAddress,
      'user_ref': userRef,
      'applicant_type': applicantType,
      'profile_post': profilePost,
      'employee_id': employeeId,
      'is_verified': isVerified,
      'resume': resume,
      'resumeID': resumeID,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmployeeProfileRecordDocumentEquality
    implements Equality<EmployeeProfileRecord> {
  const EmployeeProfileRecordDocumentEquality();

  @override
  bool equals(EmployeeProfileRecord? e1, EmployeeProfileRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.contactEmail == e2?.contactEmail &&
        e1?.primaryEmail == e2?.primaryEmail &&
        e1?.primaryPhone == e2?.primaryPhone &&
        e1?.contactPhone == e2?.contactPhone &&
        e1?.primaryAddress == e2?.primaryAddress &&
        e1?.userRef == e2?.userRef &&
        e1?.applicantType == e2?.applicantType &&
        e1?.profilePost == e2?.profilePost &&
        e1?.employeeId == e2?.employeeId &&
        listEquality.equals(e1?.workExp, e2?.workExp) &&
        listEquality.equals(e1?.education, e2?.education) &&
        e1?.isVerified == e2?.isVerified &&
        e1?.resume == e2?.resume &&
        e1?.resumeID == e2?.resumeID;
  }

  @override
  int hash(EmployeeProfileRecord? e) => const ListEquality().hash([
        e?.name,
        e?.email,
        e?.contactEmail,
        e?.primaryEmail,
        e?.primaryPhone,
        e?.contactPhone,
        e?.primaryAddress,
        e?.userRef,
        e?.applicantType,
        e?.profilePost,
        e?.employeeId,
        e?.workExp,
        e?.education,
        e?.isVerified,
        e?.resume,
        e?.resumeID
      ]);

  @override
  bool isValidKey(Object? o) => o is EmployeeProfileRecord;
}
