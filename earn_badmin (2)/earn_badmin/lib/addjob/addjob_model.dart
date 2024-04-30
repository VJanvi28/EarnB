import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'addjob_widget.dart' show AddjobWidget;
import 'package:flutter/material.dart';

class AddjobModel extends FlutterFlowModel<AddjobWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> joroleRef = [];
  void addToJoroleRef(DocumentReference item) => joroleRef.add(item);
  void removeFromJoroleRef(DocumentReference item) => joroleRef.remove(item);
  void removeAtIndexFromJoroleRef(int index) => joroleRef.removeAt(index);
  void insertAtIndexInJoroleRef(int index, DocumentReference item) =>
      joroleRef.insert(index, item);
  void updateJoroleRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      joroleRef[index] = updateFn(joroleRef[index]);

  bool jobRolesAdded = false;

  List<String> categoryJob = [];
  void addToCategoryJob(String item) => categoryJob.add(item);
  void removeFromCategoryJob(String item) => categoryJob.remove(item);
  void removeAtIndexFromCategoryJob(int index) => categoryJob.removeAt(index);
  void insertAtIndexInCategoryJob(int index, String item) =>
      categoryJob.insert(index, item);
  void updateCategoryJobAtIndex(int index, Function(String) updateFn) =>
      categoryJob[index] = updateFn(categoryJob[index]);

  List<String> jobRolesname = [];
  void addToJobRolesname(String item) => jobRolesname.add(item);
  void removeFromJobRolesname(String item) => jobRolesname.remove(item);
  void removeAtIndexFromJobRolesname(int index) => jobRolesname.removeAt(index);
  void insertAtIndexInJobRolesname(int index, String item) =>
      jobRolesname.insert(index, item);
  void updateJobRolesnameAtIndex(int index, Function(String) updateFn) =>
      jobRolesname[index] = updateFn(jobRolesname[index]);

  String? value = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Addjob widget.
  List<JobCategoryRecord>? category;
  // Stores action output result for [Firestore Query - Query a collection] action in Addjob widget.
  List<JobRolesRecord>? jobRoles;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for Des widget.
  FocusNode? desFocusNode;
  TextEditingController? desController;
  String? Function(BuildContext, String?)? desControllerValidator;
  // State field(s) for Salary widget.
  FocusNode? salaryFocusNode;
  TextEditingController? salaryController;
  String? Function(BuildContext, String?)? salaryControllerValidator;
  // State field(s) for JobType widget.
  String? jobTypeValue;
  FormFieldController<String>? jobTypeValueController;
  // State field(s) for JobReq widget.
  FocusNode? jobReqFocusNode;
  TextEditingController? jobReqController;
  String? Function(BuildContext, String?)? jobReqControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    desFocusNode?.dispose();
    desController?.dispose();

    salaryFocusNode?.dispose();
    salaryController?.dispose();

    jobReqFocusNode?.dispose();
    jobReqController?.dispose();
  }
}
