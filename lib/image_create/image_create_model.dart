import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/image_charge_widget.dart';
import '/components/something_went_woof_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ImageCreateModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String imageSize = 'q';

  bool hideShowImages = false;

  int imagesSaved = 0;

  List<String> imagesUrlSavedList = [];
  void addToImagesUrlSavedList(String item) => imagesUrlSavedList.add(item);
  void removeFromImagesUrlSavedList(String item) =>
      imagesUrlSavedList.remove(item);
  void removeAtIndexFromImagesUrlSavedList(int index) =>
      imagesUrlSavedList.removeAt(index);

  int itemIndex = 0;

  bool readOnly = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Bottom Sheet - ImageCharge] action in Button widget.
  String? imageCharge;
  // Stores action output result for [Backend Call - API (ImageGenerator)] action in Button widget.
  ApiCallResponse? imagesCreate;
  // State field(s) for Checkbox widget.

  Map<String, bool> checkboxValueMap = {};
  List<String> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  InstantTimer? instantTimer;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    instantTimer?.cancel();
  }

  /// Additional helper methods are added here.

}
