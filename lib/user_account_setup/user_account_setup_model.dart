import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/user_display_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserAccountSetupModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String username = 'White Woof';

  String fullName = 'White Dog';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for userName widget.
  TextEditingController? userNameController1;
  String? Function(BuildContext, String?)? userNameController1Validator;
  // State field(s) for userName widget.
  TextEditingController? userNameController2;
  String? Function(BuildContext, String?)? userNameController2Validator;
  // State field(s) for shortBio widget.
  TextEditingController? shortBioController;
  String? Function(BuildContext, String?)? shortBioControllerValidator;
  // Stores action output result for [Bottom Sheet - UserDisplayImage] action in Button widget.
  String? displayimage;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    userNameController1?.dispose();
    userNameController2?.dispose();
    shortBioController?.dispose();
  }

  /// Additional helper methods are added here.

}
