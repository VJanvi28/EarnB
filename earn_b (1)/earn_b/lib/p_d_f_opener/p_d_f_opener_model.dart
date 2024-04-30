import '/flutter_flow/flutter_flow_util.dart';
import 'p_d_f_opener_widget.dart' show PDFOpenerWidget;
import 'package:flutter/material.dart';

class PDFOpenerModel extends FlutterFlowModel<PDFOpenerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
