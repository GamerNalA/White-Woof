import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/something_went_woof_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flip_card/flip_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ImageChargeModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  int cookieAmount = 1;

  String img1 = '1';

  bool img2 = false;

  bool img3 = false;

  bool img4 = false;

  bool img5 = false;

  bool img6 = false;

  bool img7 = false;

  bool img8 = false;

  bool img9 = false;

  bool img10 = false;

  int addSaves1 = 0;

  int addSaves3 = 0;

  int addSaves5 = 0;

  int addSaves10 = 0;

  int addSaves20 = 0;

  int addSaves50 = 0;

  int addSaves100 = 0;

  int addSaves200 = 0;

  int addSaves500 = 0;

  String numberofcookies = '1.1';

  int imagePackPrice = 1;

  int addSavesPrice = 1;

  int totalPrice = 1;

  bool hideShowPrice = false;

  bool disableButtons = false;

  bool img31 = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for priceSummary widget.
  ScrollController? priceSummary;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    priceSummary = ScrollController();
  }

  void dispose() {
    priceSummary?.dispose();
  }

  /// Additional helper methods are added here.

}
