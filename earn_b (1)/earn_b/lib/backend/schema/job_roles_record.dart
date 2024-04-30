import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobRolesRecord extends FirestoreRecord {
  JobRolesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "role_name" field.
  String? _roleName;
  String get roleName => _roleName ?? '';
  bool hasRoleName() => _roleName != null;

  // "no_of_jobs" field.
  int? _noOfJobs;
  int get noOfJobs => _noOfJobs ?? 0;
  bool hasNoOfJobs() => _noOfJobs != null;

  // "role_language" field.
  List<String>? _roleLanguage;
  List<String> get roleLanguage => _roleLanguage ?? const [];
  bool hasRoleLanguage() => _roleLanguage != null;

  // "no_of_search" field.
  int? _noOfSearch;
  int get noOfSearch => _noOfSearch ?? 0;
  bool hasNoOfSearch() => _noOfSearch != null;

  // "role_image" field.
  String? _roleImage;
  String get roleImage => _roleImage ?? '';
  bool hasRoleImage() => _roleImage != null;

  void _initializeFields() {
    _roleName = snapshotData['role_name'] as String?;
    _noOfJobs = castToType<int>(snapshotData['no_of_jobs']);
    _roleLanguage = getDataList(snapshotData['role_language']);
    _noOfSearch = castToType<int>(snapshotData['no_of_search']);
    _roleImage = snapshotData['role_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobRoles');

  static Stream<JobRolesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobRolesRecord.fromSnapshot(s));

  static Future<JobRolesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobRolesRecord.fromSnapshot(s));

  static JobRolesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobRolesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobRolesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobRolesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobRolesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobRolesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobRolesRecordData({
  String? roleName,
  int? noOfJobs,
  int? noOfSearch,
  String? roleImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'role_name': roleName,
      'no_of_jobs': noOfJobs,
      'no_of_search': noOfSearch,
      'role_image': roleImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobRolesRecordDocumentEquality implements Equality<JobRolesRecord> {
  const JobRolesRecordDocumentEquality();

  @override
  bool equals(JobRolesRecord? e1, JobRolesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.roleName == e2?.roleName &&
        e1?.noOfJobs == e2?.noOfJobs &&
        listEquality.equals(e1?.roleLanguage, e2?.roleLanguage) &&
        e1?.noOfSearch == e2?.noOfSearch &&
        e1?.roleImage == e2?.roleImage;
  }

  @override
  int hash(JobRolesRecord? e) => const ListEquality().hash(
      [e?.roleName, e?.noOfJobs, e?.roleLanguage, e?.noOfSearch, e?.roleImage]);

  @override
  bool isValidKey(Object? o) => o is JobRolesRecord;
}
