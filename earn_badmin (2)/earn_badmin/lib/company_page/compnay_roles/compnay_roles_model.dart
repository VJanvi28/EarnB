import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'compnay_roles_widget.dart' show CompnayRolesWidget;
import 'package:flutter/material.dart';

class CompnayRolesModel extends FlutterFlowModel<CompnayRolesWidget> {
  ///  Local state fields for this page.

  List<String> language = [];
  void addToLanguage(String item) => language.add(item);
  void removeFromLanguage(String item) => language.remove(item);
  void removeAtIndexFromLanguage(int index) => language.removeAt(index);
  void insertAtIndexInLanguage(int index, String item) =>
      language.insert(index, item);
  void updateLanguageAtIndex(int index, Function(String) updateFn) =>
      language[index] = updateFn(language[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in FloatingActionButton widget.
  JobRolesRecord? role;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
