import '/flutter_flow/flutter_flow_util.dart';
import 'job_category_widget.dart' show JobCategoryWidget;
import 'package:flutter/material.dart';

class JobCategoryModel extends FlutterFlowModel<JobCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
