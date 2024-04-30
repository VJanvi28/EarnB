import '/flutter_flow/flutter_flow_util.dart';
import 'verify_widget.dart' show VerifyWidget;
import 'package:flutter/material.dart';

class VerifyModel extends FlutterFlowModel<VerifyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
