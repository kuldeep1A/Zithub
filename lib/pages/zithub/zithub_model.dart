import '/components/side_action_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'zithub_widget.dart' show ZithubWidget;
import 'package:flutter/material.dart';

class ZithubModel extends FlutterFlowModel<ZithubWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideAction.
  late SideActionModel sideActionModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideActionModel = createModel(context, () => SideActionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideActionModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
