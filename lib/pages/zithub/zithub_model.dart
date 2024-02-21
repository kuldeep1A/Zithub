import '/component/app_bar/app_bar_widget.dart';
import '/component/side_action/side_action_widget.dart';
import '/component/watermark/watermark_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'zithub_widget.dart' show ZithubWidget;
import 'package:flutter/material.dart';

class ZithubModel extends FlutterFlowModel<ZithubWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideAction.
  late SideActionModel sideActionModel;
  // Model for watermark component.
  late WatermarkModel watermarkModel;
  // Model for appBar component.
  late AppBarModel appBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideActionModel = createModel(context, () => SideActionModel());
    watermarkModel = createModel(context, () => WatermarkModel());
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideActionModel.dispose();
    watermarkModel.dispose();
    appBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
