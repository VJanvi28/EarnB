import '/flutter_flow/flutter_flow_util.dart';
import 'track_widget.dart' show TrackWidget;
import 'package:flutter/material.dart';

class TrackModel extends FlutterFlowModel<TrackWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
