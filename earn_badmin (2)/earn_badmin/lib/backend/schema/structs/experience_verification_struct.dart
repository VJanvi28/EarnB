// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExperienceVerificationStruct extends FFFirebaseStruct {
  ExperienceVerificationStruct({
    String? salarySlip,
    String? idCard,
    DocumentReference? userRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _salarySlip = salarySlip,
        _idCard = idCard,
        _userRef = userRef,
        super(firestoreUtilData);

  // "salarySlip" field.
  String? _salarySlip;
  String get salarySlip => _salarySlip ?? '';
  set salarySlip(String? val) => _salarySlip = val;
  bool hasSalarySlip() => _salarySlip != null;

  // "idCard" field.
  String? _idCard;
  String get idCard => _idCard ?? '';
  set idCard(String? val) => _idCard = val;
  bool hasIdCard() => _idCard != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? val) => _userRef = val;
  bool hasUserRef() => _userRef != null;

  static ExperienceVerificationStruct fromMap(Map<String, dynamic> data) =>
      ExperienceVerificationStruct(
        salarySlip: data['salarySlip'] as String?,
        idCard: data['idCard'] as String?,
        userRef: data['userRef'] as DocumentReference?,
      );

  static ExperienceVerificationStruct? maybeFromMap(dynamic data) => data is Map
      ? ExperienceVerificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'salarySlip': _salarySlip,
        'idCard': _idCard,
        'userRef': _userRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'salarySlip': serializeParam(
          _salarySlip,
          ParamType.String,
        ),
        'idCard': serializeParam(
          _idCard,
          ParamType.String,
        ),
        'userRef': serializeParam(
          _userRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ExperienceVerificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ExperienceVerificationStruct(
        salarySlip: deserializeParam(
          data['salarySlip'],
          ParamType.String,
          false,
        ),
        idCard: deserializeParam(
          data['idCard'],
          ParamType.String,
          false,
        ),
        userRef: deserializeParam(
          data['userRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['user'],
        ),
      );

  @override
  String toString() => 'ExperienceVerificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExperienceVerificationStruct &&
        salarySlip == other.salarySlip &&
        idCard == other.idCard &&
        userRef == other.userRef;
  }

  @override
  int get hashCode => const ListEquality().hash([salarySlip, idCard, userRef]);
}

ExperienceVerificationStruct createExperienceVerificationStruct({
  String? salarySlip,
  String? idCard,
  DocumentReference? userRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExperienceVerificationStruct(
      salarySlip: salarySlip,
      idCard: idCard,
      userRef: userRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExperienceVerificationStruct? updateExperienceVerificationStruct(
  ExperienceVerificationStruct? experienceVerification, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    experienceVerification
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExperienceVerificationStructData(
  Map<String, dynamic> firestoreData,
  ExperienceVerificationStruct? experienceVerification,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (experienceVerification == null) {
    return;
  }
  if (experienceVerification.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      experienceVerification.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final experienceVerificationData = getExperienceVerificationFirestoreData(
      experienceVerification, forFieldValue);
  final nestedData =
      experienceVerificationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      experienceVerification.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExperienceVerificationFirestoreData(
  ExperienceVerificationStruct? experienceVerification, [
  bool forFieldValue = false,
]) {
  if (experienceVerification == null) {
    return {};
  }
  final firestoreData = mapToFirestore(experienceVerification.toMap());

  // Add any Firestore field values
  experienceVerification.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExperienceVerificationListFirestoreData(
  List<ExperienceVerificationStruct>? experienceVerifications,
) =>
    experienceVerifications
        ?.map((e) => getExperienceVerificationFirestoreData(e, true))
        .toList() ??
    [];
