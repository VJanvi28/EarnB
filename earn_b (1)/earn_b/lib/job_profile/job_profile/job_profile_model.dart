import '/flutter_flow/flutter_flow_util.dart';
import 'job_profile_widget.dart' show JobProfileWidget;
import 'package:flutter/material.dart';

class JobProfileModel extends FlutterFlowModel<JobProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
