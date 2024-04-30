import '/flutter_flow/flutter_flow_util.dart';
import 'category_see_all_widget.dart' show CategorySeeAllWidget;
import 'package:flutter/material.dart';

class CategorySeeAllModel extends FlutterFlowModel<CategorySeeAllWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
