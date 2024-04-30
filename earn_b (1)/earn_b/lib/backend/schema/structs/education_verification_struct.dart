// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EducationVerificationStruct extends FFFirebaseStruct {
  EducationVerificationStruct({
    String? collegeIdCard,
    String? passingCertificate,
    DocumentReference? userRef,
    DocumentReference? profileRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _collegeIdCard = collegeIdCard,
        _passingCertificate = passingCertificate,
        _userRef = userRef,
        _profileRef = profileRef,
        super(firestoreUtilData);

  // "collegeIdCard" field.
  String? _collegeIdCard;
  String get collegeIdCard => _collegeIdCard ?? '';
  set collegeIdCard(String? val) => _collegeIdCard = val;
  bool hasCollegeIdCard() => _collegeIdCard != null;

  // "Passing_Certificate" field.
  String? _passingCertificate;
  String get passingCertificate => _passingCertificate ?? '';
  set passingCertificate(String? val) => _passingCertificate = val;
  bool hasPassingCertificate() => _passingCertificate != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? val) => _userRef = val;
  bool hasUserRef() => _userRef != null;

  // "profileRef" field.
  DocumentReference? _profileRef;
  DocumentReference? get profileRef => _profileRef;
  set profileRef(DocumentReference? val) => _profileRef = val;
  bool hasProfileRef() => _profileRef != null;

  static EducationVerificationStruct fromMap(Map<String, dynamic> data) =>
      EducationVerificationStruct(
        collegeIdCard: data['collegeIdCard'] as String?,
        passingCertificate: data['Passing_Certificate'] as String?,
        userRef: data['userRef'] as DocumentReference?,
        profileRef: data['profileRef'] as DocumentReference?,
      );

  static EducationVerificationStruct? maybeFromMap(dynamic data) => data is Map
      ? EducationVerificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'collegeIdCard': _collegeIdCard,
        'Passing_Certificate': _passingCertificate,
        'userRef': _userRef,
        'profileRef': _profileRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'collegeIdCard': serializeParam(
          _collegeIdCard,
          ParamType.String,
        ),
        'Passing_Certificate': serializeParam(
          _passingCertificate,
          ParamType.String,
        ),
        'userRef': serializeParam(
          _userRef,
          ParamType.DocumentReference,
        ),
        'profileRef': serializeParam(
          _profileRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static EducationVerificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EducationVerificationStruct(
        collegeIdCard: deserializeParam(
          data['collegeIdCard'],
          ParamType.String,
          false,
        ),
        passingCertificate: deserializeParam(
          data['Passing_Certificate'],
          ParamType.String,
          false,
        ),
        userRef: deserializeParam(
          data['userRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['user'],
        ),
        profileRef: deserializeParam(
          data['profileRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['employeeProfile'],
        ),
      );

  @override
  String toString() => 'EducationVerificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EducationVerificationStruct &&
        collegeIdCard == other.collegeIdCard &&
        passingCertificate == other.passingCertificate &&
        userRef == other.userRef &&
        profileRef == other.profileRef;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([collegeIdCard, passingCertificate, userRef, profileRef]);
}

EducationVerificationStruct createEducationVerificationStruct({
  String? collegeIdCard,
  String? passingCertificate,
  DocumentReference? userRef,
  DocumentReference? profileRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EducationVerificationStruct(
      collegeIdCard: collegeIdCard,
      passingCertificate: passingCertificate,
      userRef: userRef,
      profileRef: profileRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EducationVerificationStruct? updateEducationVerificationStruct(
  EducationVerificationStruct? educationVerification, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    educationVerification
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEducationVerificationStructData(
  Map<String, dynamic> firestoreData,
  EducationVerificationStruct? educationVerification,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (educationVerification == null) {
    return;
  }
  if (educationVerification.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      educationVerification.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final educationVerificationData = getEducationVerificationFirestoreData(
      educationVerification, forFieldValue);
  final nestedData =
      educationVerificationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      educationVerification.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEducationVerificationFirestoreData(
  EducationVerificationStruct? educationVerification, [
  bool forFieldValue = false,
]) {
  if (educationVerification == null) {
    return {};
  }
  final firestoreData = mapToFirestore(educationVerification.toMap());

  // Add any Firestore field values
  educationVerification.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEducationVerificationListFirestoreData(
  List<EducationVerificationStruct>? educationVerifications,
) =>
    educationVerifications
        ?.map((e) => getEducationVerificationFirestoreData(e, true))
        .toList() ??
    [];
