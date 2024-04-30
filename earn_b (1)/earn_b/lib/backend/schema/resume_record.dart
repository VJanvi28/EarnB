import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ResumeRecord extends FirestoreRecord {
  ResumeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "resume_id" field.
  String? _resumeId;
  String get resumeId => _resumeId ?? '';
  bool hasResumeId() => _resumeId != null;

  // "resume_post" field.
  String? _resumePost;
  String get resumePost => _resumePost ?? '';
  bool hasResumePost() => _resumePost != null;

  // "resume_skill" field.
  List<String>? _resumeSkill;
  List<String> get resumeSkill => _resumeSkill ?? const [];
  bool hasResumeSkill() => _resumeSkill != null;

  // "resume_industry" field.
  String? _resumeIndustry;
  String get resumeIndustry => _resumeIndustry ?? '';
  bool hasResumeIndustry() => _resumeIndustry != null;

  // "programmin_language" field.
  List<String>? _programminLanguage;
  List<String> get programminLanguage => _programminLanguage ?? const [];
  bool hasProgramminLanguage() => _programminLanguage != null;

  // "speaking_language" field.
  List<String>? _speakingLanguage;
  List<String> get speakingLanguage => _speakingLanguage ?? const [];
  bool hasSpeakingLanguage() => _speakingLanguage != null;

  // "hobby" field.
  List<String>? _hobby;
  List<String> get hobby => _hobby ?? const [];
  bool hasHobby() => _hobby != null;

  // "linked_profile" field.
  DocumentReference? _linkedProfile;
  DocumentReference? get linkedProfile => _linkedProfile;
  bool hasLinkedProfile() => _linkedProfile != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "portfolio_link" field.
  String? _portfolioLink;
  String get portfolioLink => _portfolioLink ?? '';
  bool hasPortfolioLink() => _portfolioLink != null;

  // "pdfUrl" field.
  String? _pdfUrl;
  String get pdfUrl => _pdfUrl ?? '';
  bool hasPdfUrl() => _pdfUrl != null;

  // "aboutMe" field.
  String? _aboutMe;
  String get aboutMe => _aboutMe ?? '';
  bool hasAboutMe() => _aboutMe != null;

  void _initializeFields() {
    _resumeId = snapshotData['resume_id'] as String?;
    _resumePost = snapshotData['resume_post'] as String?;
    _resumeSkill = getDataList(snapshotData['resume_skill']);
    _resumeIndustry = snapshotData['resume_industry'] as String?;
    _programminLanguage = getDataList(snapshotData['programmin_language']);
    _speakingLanguage = getDataList(snapshotData['speaking_language']);
    _hobby = getDataList(snapshotData['hobby']);
    _linkedProfile = snapshotData['linked_profile'] as DocumentReference?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _portfolioLink = snapshotData['portfolio_link'] as String?;
    _pdfUrl = snapshotData['pdfUrl'] as String?;
    _aboutMe = snapshotData['aboutMe'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resume');

  static Stream<ResumeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResumeRecord.fromSnapshot(s));

  static Future<ResumeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResumeRecord.fromSnapshot(s));

  static ResumeRecord fromSnapshot(DocumentSnapshot snapshot) => ResumeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResumeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResumeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResumeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResumeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResumeRecordData({
  String? resumeId,
  String? resumePost,
  String? resumeIndustry,
  DocumentReference? linkedProfile,
  DocumentReference? userRef,
  String? portfolioLink,
  String? pdfUrl,
  String? aboutMe,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'resume_id': resumeId,
      'resume_post': resumePost,
      'resume_industry': resumeIndustry,
      'linked_profile': linkedProfile,
      'user_ref': userRef,
      'portfolio_link': portfolioLink,
      'pdfUrl': pdfUrl,
      'aboutMe': aboutMe,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResumeRecordDocumentEquality implements Equality<ResumeRecord> {
  const ResumeRecordDocumentEquality();

  @override
  bool equals(ResumeRecord? e1, ResumeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.resumeId == e2?.resumeId &&
        e1?.resumePost == e2?.resumePost &&
        listEquality.equals(e1?.resumeSkill, e2?.resumeSkill) &&
        e1?.resumeIndustry == e2?.resumeIndustry &&
        listEquality.equals(e1?.programminLanguage, e2?.programminLanguage) &&
        listEquality.equals(e1?.speakingLanguage, e2?.speakingLanguage) &&
        listEquality.equals(e1?.hobby, e2?.hobby) &&
        e1?.linkedProfile == e2?.linkedProfile &&
        e1?.userRef == e2?.userRef &&
        e1?.portfolioLink == e2?.portfolioLink &&
        e1?.pdfUrl == e2?.pdfUrl &&
        e1?.aboutMe == e2?.aboutMe;
  }

  @override
  int hash(ResumeRecord? e) => const ListEquality().hash([
        e?.resumeId,
        e?.resumePost,
        e?.resumeSkill,
        e?.resumeIndustry,
        e?.programminLanguage,
        e?.speakingLanguage,
        e?.hobby,
        e?.linkedProfile,
        e?.userRef,
        e?.portfolioLink,
        e?.pdfUrl,
        e?.aboutMe
      ]);

  @override
  bool isValidKey(Object? o) => o is ResumeRecord;
}
