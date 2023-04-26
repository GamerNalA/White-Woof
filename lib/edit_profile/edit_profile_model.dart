import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/photo_upload_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for userName widget.
  TextEditingController? userNameController1;
  String? Function(BuildContext, String?)? userNameController1Validator;
  // State field(s) for userName widget.
  TextEditingController? userNameController2;
  String? Function(BuildContext, String?)? userNameController2Validator;
  // State field(s) for userName widget.
  TextEditingController? userNameController3;
  String? Function(BuildContext, String?)? userNameController3Validator;
  // State field(s) for shortBio widget.
  TextEditingController? shortBioController;
  String? Function(BuildContext, String?)? shortBioControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    userNameController1?.dispose();
    userNameController2?.dispose();
    userNameController3?.dispose();
    shortBioController?.dispose();
  }

  /// Additional helper methods are added here.

}
