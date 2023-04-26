import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/payment_request_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  double ordertotal = 0.0;

  double totalprice = 0.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getCartPricesANDtotal] action in cart widget.
  double? cartoalCustom;
  // Stores action output result for [Custom Action - getCartPricesANDtotal] action in IconButton widget.
  double? cartoalCustom1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PayRecord? qwert;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
