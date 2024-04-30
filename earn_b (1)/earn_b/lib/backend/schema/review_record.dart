import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ReviewRecord extends FirestoreRecord {
  ReviewRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "r_id" field.
  String? _rId;
  String get rId => _rId ?? '';
  bool hasRId() => _rId != null;

  // "r_comment" field.
  String? _rComment;
  String get rComment => _rComment ?? '';
  bool hasRComment() => _rComment != null;

  // "job_ref" field.
  DocumentReference? _jobRef;
  DocumentReference? get jobRef => _jobRef;
  bool hasJobRef() => _jobRef != null;

  // "c_ref" field.
  DocumentReference? _cRef;
  DocumentReference? get cRef => _cRef;
  bool hasCRef() => _cRef != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "like" field.
  List<DocumentReference>? _like;
  List<DocumentReference> get like => _like ?? const [];
  bool hasLike() => _like != null;

  void _initializeFields() {
    _rId = snapshotData['r_id'] as String?;
    _rComment = snapshotData['r_comment'] as String?;
    _jobRef = snapshotData['job_ref'] as DocumentReference?;
    _cRef = snapshotData['c_ref'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _like = getDataList(snapshotData['like']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('review');

  static Stream<ReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewRecord.fromSnapshot(s));

  static Future<ReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewRecord.fromSnapshot(s));

  static ReviewRecord fromSnapshot(DocumentSnapshot snapshot) => ReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewRecordData({
  String? rId,
  String? rComment,
  DocumentReference? jobRef,
  DocumentReference? cRef,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'r_id': rId,
      'r_comment': rComment,
      'job_ref': jobRef,
      'c_ref': cRef,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewRecordDocumentEquality implements Equality<ReviewRecord> {
  const ReviewRecordDocumentEquality();

  @override
  bool equals(ReviewRecord? e1, ReviewRecord? e2) {
    const listEquality = ListEquality();
    return e1?.rId == e2?.rId &&
        e1?.rComment == e2?.rComment &&
        e1?.jobRef == e2?.jobRef &&
        e1?.cRef == e2?.cRef &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.like, e2?.like);
  }

  @override
  int hash(ReviewRecord? e) => const ListEquality()
      .hash([e?.rId, e?.rComment, e?.jobRef, e?.cRef, e?.user, e?.like]);

  @override
  bool isValidKey(Object? o) => o is ReviewRecord;
}
