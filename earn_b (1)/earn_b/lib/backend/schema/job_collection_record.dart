import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobCollectionRecord extends FirestoreRecord {
  JobCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "j_id" field.
  String? _jId;
  String get jId => _jId ?? '';
  bool hasJId() => _jId != null;

  // "j_name" field.
  String? _jName;
  String get jName => _jName ?? '';
  bool hasJName() => _jName != null;

  // "j_category" field.
  String? _jCategory;
  String get jCategory => _jCategory ?? '';
  bool hasJCategory() => _jCategory != null;

  // "j_description" field.
  String? _jDescription;
  String get jDescription => _jDescription ?? '';
  bool hasJDescription() => _jDescription != null;

  // "j_salary" field.
  String? _jSalary;
  String get jSalary => _jSalary ?? '';
  bool hasJSalary() => _jSalary != null;

  // "j_type" field.
  String? _jType;
  String get jType => _jType ?? '';
  bool hasJType() => _jType != null;

  // "is_featured" field.
  bool? _isFeatured;
  bool get isFeatured => _isFeatured ?? false;
  bool hasIsFeatured() => _isFeatured != null;

  // "j_view" field.
  int? _jView;
  int get jView => _jView ?? 0;
  bool hasJView() => _jView != null;

  // "j_requriment" field.
  String? _jRequriment;
  String get jRequriment => _jRequriment ?? '';
  bool hasJRequriment() => _jRequriment != null;

  // "about_job" field.
  String? _aboutJob;
  String get aboutJob => _aboutJob ?? '';
  bool hasAboutJob() => _aboutJob != null;

  // "j_location" field.
  String? _jLocation;
  String get jLocation => _jLocation ?? '';
  bool hasJLocation() => _jLocation != null;

  // "j_address" field.
  String? _jAddress;
  String get jAddress => _jAddress ?? '';
  bool hasJAddress() => _jAddress != null;

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  bool hasCompanyRef() => _companyRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "j_post" field.
  String? _jPost;
  String get jPost => _jPost ?? '';
  bool hasJPost() => _jPost != null;

  // "appliedCandidate" field.
  List<DocumentReference>? _appliedCandidate;
  List<DocumentReference> get appliedCandidate => _appliedCandidate ?? const [];
  bool hasAppliedCandidate() => _appliedCandidate != null;

  void _initializeFields() {
    _jId = snapshotData['j_id'] as String?;
    _jName = snapshotData['j_name'] as String?;
    _jCategory = snapshotData['j_category'] as String?;
    _jDescription = snapshotData['j_description'] as String?;
    _jSalary = snapshotData['j_salary'] as String?;
    _jType = snapshotData['j_type'] as String?;
    _isFeatured = snapshotData['is_featured'] as bool?;
    _jView = castToType<int>(snapshotData['j_view']);
    _jRequriment = snapshotData['j_requriment'] as String?;
    _aboutJob = snapshotData['about_job'] as String?;
    _jLocation = snapshotData['j_location'] as String?;
    _jAddress = snapshotData['j_address'] as String?;
    _companyRef = snapshotData['companyRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _jPost = snapshotData['j_post'] as String?;
    _appliedCandidate = getDataList(snapshotData['appliedCandidate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobCollection');

  static Stream<JobCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobCollectionRecord.fromSnapshot(s));

  static Future<JobCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobCollectionRecord.fromSnapshot(s));

  static JobCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobCollectionRecordData({
  String? jId,
  String? jName,
  String? jCategory,
  String? jDescription,
  String? jSalary,
  String? jType,
  bool? isFeatured,
  int? jView,
  String? jRequriment,
  String? aboutJob,
  String? jLocation,
  String? jAddress,
  DocumentReference? companyRef,
  DocumentReference? userRef,
  String? jPost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'j_id': jId,
      'j_name': jName,
      'j_category': jCategory,
      'j_description': jDescription,
      'j_salary': jSalary,
      'j_type': jType,
      'is_featured': isFeatured,
      'j_view': jView,
      'j_requriment': jRequriment,
      'about_job': aboutJob,
      'j_location': jLocation,
      'j_address': jAddress,
      'companyRef': companyRef,
      'userRef': userRef,
      'j_post': jPost,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobCollectionRecordDocumentEquality
    implements Equality<JobCollectionRecord> {
  const JobCollectionRecordDocumentEquality();

  @override
  bool equals(JobCollectionRecord? e1, JobCollectionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.jId == e2?.jId &&
        e1?.jName == e2?.jName &&
        e1?.jCategory == e2?.jCategory &&
        e1?.jDescription == e2?.jDescription &&
        e1?.jSalary == e2?.jSalary &&
        e1?.jType == e2?.jType &&
        e1?.isFeatured == e2?.isFeatured &&
        e1?.jView == e2?.jView &&
        e1?.jRequriment == e2?.jRequriment &&
        e1?.aboutJob == e2?.aboutJob &&
        e1?.jLocation == e2?.jLocation &&
        e1?.jAddress == e2?.jAddress &&
        e1?.companyRef == e2?.companyRef &&
        e1?.userRef == e2?.userRef &&
        e1?.jPost == e2?.jPost &&
        listEquality.equals(e1?.appliedCandidate, e2?.appliedCandidate);
  }

  @override
  int hash(JobCollectionRecord? e) => const ListEquality().hash([
        e?.jId,
        e?.jName,
        e?.jCategory,
        e?.jDescription,
        e?.jSalary,
        e?.jType,
        e?.isFeatured,
        e?.jView,
        e?.jRequriment,
        e?.aboutJob,
        e?.jLocation,
        e?.jAddress,
        e?.companyRef,
        e?.userRef,
        e?.jPost,
        e?.appliedCandidate
      ]);

  @override
  bool isValidKey(Object? o) => o is JobCollectionRecord;
}
