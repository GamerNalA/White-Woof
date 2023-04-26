import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/buymemory_widget.dart';
import '/components/something_went_woof_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int cookiesafter = 0;

  dynamic remJSONcompileOUT;

  bool? remButtonDisable;

  bool? notremButtonDisable;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (ChatGpt)] action in sendnotrem widget.
  ApiCallResponse? chatgpt;
  // Stores action output result for [Backend Call - Create Document] action in sendrem widget.
  ChatMessagesRecord? hi;
  // Stores action output result for [Backend Call - API (ChatGpt)] action in sendrem widget.
  ApiCallResponse? chatgptremember;
  // Stores action output result for [Backend Call - Create Document] action in sendrem widget.
  ChatMessagesRecord? q222;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    columnController1 = ScrollController();
    listViewController = ScrollController();
    columnController2 = ScrollController();
  }

  void dispose() {
    columnController1?.dispose();
    listViewController?.dispose();
    columnController2?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
