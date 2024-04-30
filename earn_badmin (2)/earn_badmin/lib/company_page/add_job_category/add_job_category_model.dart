import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_job_category_widget.dart' show AddJobCategoryWidget;
import 'package:flutter/material.dart';

class AddJobCategoryModel extends FlutterFlowModel<AddJobCategoryWidget> {
  ///  Local state fields for this page.

  List<String> skill = [];
  void addToSkill(String item) => skill.add(item);
  void removeFromSkill(String item) => skill.remove(item);
  void removeAtIndexFromSkill(int index) => skill.removeAt(index);
  void insertAtIndexInSkill(int index, String item) =>
      skill.insert(index, item);
  void updateSkillAtIndex(int index, Function(String) updateFn) =>
      skill[index] = updateFn(skill[index]);

  List<String> language = [];
  void addToLanguage(String item) => language.add(item);
  void removeFromLanguage(String item) => language.remove(item);
  void removeAtIndexFromLanguage(int index) => language.removeAt(index);
  void insertAtIndexInLanguage(int index, String item) =>
      language.insert(index, item);
  void updateLanguageAtIndex(int index, Function(String) updateFn) =>
      language[index] = updateFn(language[index]);

  List<String> prlangauge = [];
  void addToPrlangauge(String item) => prlangauge.add(item);
  void removeFromPrlangauge(String item) => prlangauge.remove(item);
  void removeAtIndexFromPrlangauge(int index) => prlangauge.removeAt(index);
  void insertAtIndexInPrlangauge(int index, String item) =>
      prlangauge.insert(index, item);
  void updatePrlangaugeAtIndex(int index, Function(String) updateFn) =>
      prlangauge[index] = updateFn(prlangauge[index]);

  List<String> hobbies = [];
  void addToHobbies(String item) => hobbies.add(item);
  void removeFromHobbies(String item) => hobbies.remove(item);
  void removeAtIndexFromHobbies(int index) => hobbies.removeAt(index);
  void insertAtIndexInHobbies(int index, String item) =>
      hobbies.insert(index, item);
  void updateHobbiesAtIndex(int index, Function(String) updateFn) =>
      hobbies[index] = updateFn(hobbies[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in FloatingActionButton widget.
  JobCategoryRecord? category;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
