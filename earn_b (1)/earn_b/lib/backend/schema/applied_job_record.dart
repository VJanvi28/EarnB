import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AppliedJobRecord extends FirestoreRecord {
  AppliedJobRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "j_id" field.
  String? _jId;
  String get jId => _jId ?? '';
  bool hasJId() => _jId != null;

  // "Employeeprofile_id" field.
  String? _employeeprofileId;
  String get employeeprofileId => _employeeprofileId ?? '';
  bool hasEmployeeprofileId() => _employeeprofileId != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "track" field.
  TrackDataStruct? _track;
  TrackDataStruct get track => _track ?? TrackDataStruct();
  bool hasTrack() => _track != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _jId = snapshotData['j_id'] as String?;
    _employeeprofileId = snapshotData['Employeeprofile_id'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _track = TrackDataStruct.maybeFromMap(snapshotData['track']);
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appliedJob');

  static Stream<AppliedJobRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppliedJobRecord.fromSnapshot(s));

  static Future<AppliedJobRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppliedJobRecord.fromSnapshot(s));

  static AppliedJobRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppliedJobRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppliedJobRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppliedJobRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppliedJobRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppliedJobRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppliedJobRecordData({
  String? jId,
  String? employeeprofileId,
  DocumentReference? userRef,
  TrackDataStruct? track,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'j_id': jId,
      'Employeeprofile_id': employeeprofileId,
      'userRef': userRef,
      'track': TrackDataStruct().toMap(),
      'status': status,
    }.withoutNulls,
  );

  // Handle nested data for "track" field.
  addTrackDataStructData(firestoreData, track, 'track');

  return firestoreData;
}

class AppliedJobRecordDocumentEquality implements Equality<AppliedJobRecord> {
  const AppliedJobRecordDocumentEquality();

  @override
  bool equals(AppliedJobRecord? e1, AppliedJobRecord? e2) {
    return e1?.jId == e2?.jId &&
        e1?.employeeprofileId == e2?.employeeprofileId &&
        e1?.userRef == e2?.userRef &&
        e1?.track == e2?.track &&
        e1?.status == e2?.status;
  }

  @override
  int hash(AppliedJobRecord? e) => const ListEquality()
      .hash([e?.jId, e?.employeeprofileId, e?.userRef, e?.track, e?.status]);

  @override
  bool isValidKey(Object? o) => o is AppliedJobRecord;
}
