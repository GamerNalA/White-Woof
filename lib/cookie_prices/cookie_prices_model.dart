import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/confirm_memory_buy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class CookiePricesModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool cartItemAmount = true;

  int buycount = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - generatecartnum1] action in cookiePrices widget.
  bool? caratnum;
  // State field(s) for ListView widget.
  PagingController<DocumentSnapshot?, CookiesRecord>? pagingController;
  Query? pagingQuery;
  List<StreamSubscription?> streamSubscriptions = [];

  // Stores action output result for [Custom Action - generatecartnum1] action in Button widget.
  bool? cartnum;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    streamSubscriptions.forEach((s) => s?.cancel());
  }

  /// Additional helper methods are added here.

}
