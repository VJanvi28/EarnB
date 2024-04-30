import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TrackDataRecord extends FirestoreRecord {
  TrackDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "isUnderReview" field.
  bool? _isUnderReview;
  bool get isUnderReview => _isUnderReview ?? false;
  bool hasIsUnderReview() => _isUnderReview != null;

  // "is_Confirmed" field.
  bool? _isConfirmed;
  bool get isConfirmed => _isConfirmed ?? false;
  bool hasIsConfirmed() => _isConfirmed != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "is_Cancel" field.
  bool? _isCancel;
  bool get isCancel => _isCancel ?? false;
  bool hasIsCancel() => _isCancel != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  void _initializeFields() {
    _isUnderReview = snapshotData['isUnderReview'] as bool?;
    _isConfirmed = snapshotData['is_Confirmed'] as bool?;
    _ref = snapshotData['ref'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _isCancel = snapshotData['is_Cancel'] as bool?;
    _message = snapshotData['message'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TrackData');

  static Stream<TrackDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackDataRecord.fromSnapshot(s));

  static Future<TrackDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackDataRecord.fromSnapshot(s));

  static TrackDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrackDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrackDataRecordData({
  bool? isUnderReview,
  bool? isConfirmed,
  DocumentReference? ref,
  DateTime? time,
  DocumentReference? userRef,
  bool? isCancel,
  String? message,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isUnderReview': isUnderReview,
      'is_Confirmed': isConfirmed,
      'ref': ref,
      'time': time,
      'userRef': userRef,
      'is_Cancel': isCancel,
      'message': message,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackDataRecordDocumentEquality implements Equality<TrackDataRecord> {
  const TrackDataRecordDocumentEquality();

  @override
  bool equals(TrackDataRecord? e1, TrackDataRecord? e2) {
    return e1?.isUnderReview == e2?.isUnderReview &&
        e1?.isConfirmed == e2?.isConfirmed &&
        e1?.ref == e2?.ref &&
        e1?.time == e2?.time &&
        e1?.userRef == e2?.userRef &&
        e1?.isCancel == e2?.isCancel &&
        e1?.message == e2?.message;
  }

  @override
  int hash(TrackDataRecord? e) => const ListEquality().hash([
        e?.isUnderReview,
        e?.isConfirmed,
        e?.ref,
        e?.time,
        e?.userRef,
        e?.isCancel,
        e?.message
      ]);

  @override
  bool isValidKey(Object? o) => o is TrackDataRecord;
}
