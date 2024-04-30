import '/flutter_flow/flutter_flow_util.dart';
import 'company_name_widget.dart' show CompanyNameWidget;
import 'package:flutter/material.dart';

class CompanyNameModel extends FlutterFlowModel<CompanyNameWidget> {
  ///  Local state fields for this page.

  bool? isEmailverified = false;

  bool? isNumberVerified = false;

  String? otpValue;

  bool? isOTPSend = false;

  DocumentReference? resume;

  DocumentReference? docRef;

  List<DocumentReference> educationRef = [];
  void addToEducationRef(DocumentReference item) => educationRef.add(item);
  void removeFromEducationRef(DocumentReference item) =>
      educationRef.remove(item);
  void removeAtIndexFromEducationRef(int index) => educationRef.removeAt(index);
  void insertAtIndexInEducationRef(int index, DocumentReference item) =>
      educationRef.insert(index, item);
  void updateEducationRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      educationRef[index] = updateFn(educationRef[index]);

  List<DocumentReference> experienceRef = [];
  void addToExperienceRef(DocumentReference item) => experienceRef.add(item);
  void removeFromExperienceRef(DocumentReference item) =>
      experienceRef.remove(item);
  void removeAtIndexFromExperienceRef(int index) =>
      experienceRef.removeAt(index);
  void insertAtIndexInExperienceRef(int index, DocumentReference item) =>
      experienceRef.insert(index, item);
  void updateExperienceRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      experienceRef[index] = updateFn(experienceRef[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
