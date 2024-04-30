// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackDataStruct extends FFFirebaseStruct {
  TrackDataStruct({
    String? updateMessage,
    DateTime? time,
    bool? isUnderReview,
    bool? isRejected,
    bool? isConfirmed,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _updateMessage = updateMessage,
        _time = time,
        _isUnderReview = isUnderReview,
        _isRejected = isRejected,
        _isConfirmed = isConfirmed,
        super(firestoreUtilData);

  // "updateMessage" field.
  String? _updateMessage;
  String get updateMessage => _updateMessage ?? '';
  set updateMessage(String? val) => _updateMessage = val;
  bool hasUpdateMessage() => _updateMessage != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;
  bool hasTime() => _time != null;

  // "isUnderReview" field.
  bool? _isUnderReview;
  bool get isUnderReview => _isUnderReview ?? false;
  set isUnderReview(bool? val) => _isUnderReview = val;
  bool hasIsUnderReview() => _isUnderReview != null;

  // "is_Rejected" field.
  bool? _isRejected;
  bool get isRejected => _isRejected ?? false;
  set isRejected(bool? val) => _isRejected = val;
  bool hasIsRejected() => _isRejected != null;

  // "is_Confirmed" field.
  bool? _isConfirmed;
  bool get isConfirmed => _isConfirmed ?? false;
  set isConfirmed(bool? val) => _isConfirmed = val;
  bool hasIsConfirmed() => _isConfirmed != null;

  static TrackDataStruct fromMap(Map<String, dynamic> data) => TrackDataStruct(
        updateMessage: data['updateMessage'] as String?,
        time: data['time'] as DateTime?,
        isUnderReview: data['isUnderReview'] as bool?,
        isRejected: data['is_Rejected'] as bool?,
        isConfirmed: data['is_Confirmed'] as bool?,
      );

  static TrackDataStruct? maybeFromMap(dynamic data) => data is Map
      ? TrackDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'updateMessage': _updateMessage,
        'time': _time,
        'isUnderReview': _isUnderReview,
        'is_Rejected': _isRejected,
        'is_Confirmed': _isConfirmed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'updateMessage': serializeParam(
          _updateMessage,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
        'isUnderReview': serializeParam(
          _isUnderReview,
          ParamType.bool,
        ),
        'is_Rejected': serializeParam(
          _isRejected,
          ParamType.bool,
        ),
        'is_Confirmed': serializeParam(
          _isConfirmed,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TrackDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrackDataStruct(
        updateMessage: deserializeParam(
          data['updateMessage'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.DateTime,
          false,
        ),
        isUnderReview: deserializeParam(
          data['isUnderReview'],
          ParamType.bool,
          false,
        ),
        isRejected: deserializeParam(
          data['is_Rejected'],
          ParamType.bool,
          false,
        ),
        isConfirmed: deserializeParam(
          data['is_Confirmed'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TrackDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrackDataStruct &&
        updateMessage == other.updateMessage &&
        time == other.time &&
        isUnderReview == other.isUnderReview &&
        isRejected == other.isRejected &&
        isConfirmed == other.isConfirmed;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([updateMessage, time, isUnderReview, isRejected, isConfirmed]);
}

TrackDataStruct createTrackDataStruct({
  String? updateMessage,
  DateTime? time,
  bool? isUnderReview,
  bool? isRejected,
  bool? isConfirmed,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrackDataStruct(
      updateMessage: updateMessage,
      time: time,
      isUnderReview: isUnderReview,
      isRejected: isRejected,
      isConfirmed: isConfirmed,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TrackDataStruct? updateTrackDataStruct(
  TrackDataStruct? trackData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    trackData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrackDataStructData(
  Map<String, dynamic> firestoreData,
  TrackDataStruct? trackData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (trackData == null) {
    return;
  }
  if (trackData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && trackData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trackDataData = getTrackDataFirestoreData(trackData, forFieldValue);
  final nestedData = trackDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = trackData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrackDataFirestoreData(
  TrackDataStruct? trackData, [
  bool forFieldValue = false,
]) {
  if (trackData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(trackData.toMap());

  // Add any Firestore field values
  trackData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrackDataListFirestoreData(
  List<TrackDataStruct>? trackDatas,
) =>
    trackDatas?.map((e) => getTrackDataFirestoreData(e, true)).toList() ?? [];
