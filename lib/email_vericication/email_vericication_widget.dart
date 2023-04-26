import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/something_went_woof_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'email_vericication_model.dart';
export 'email_vericication_model.dart';

class EmailVericicationWidget extends StatefulWidget {
  const EmailVericicationWidget({Key? key}) : super(key: key);

  @override
  _EmailVericicationWidgetState createState() =>
      _EmailVericicationWidgetState();
}

class _EmailVericicationWidgetState extends State<EmailVericicationWidget> {
  late EmailVericicationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailVericicationModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).appBar,
          automaticallyImplyLeading: false,
          title: Text(
            'Email Verification',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: Text(
                  'Verifying your email address is an important step in the application registration process. It confirms that the email address you provided is valid and belongs to you. To continue using the application, you will need to follow the verification instructions sent to your email. Once your email is verified, you will have full access to the application\'s features and benefits.',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, -0.95),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Send email verification code to ${currentUserEmail}',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              if (_model.changeEmail == true ? false : true)
                Align(
                  alignment: AlignmentDirectional(-0.85, -0.97),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.changeEmail = true;
                      });
                    },
                    child: Text(
                      'Change email',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
              if (_model.changeEmail == true ? true : false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 211.0,
                        child: TextFormField(
                          controller: _model.textController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'email',
                            hintText: 'Enter email here...',
                            hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).lineColor,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.textController1Validator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (functions
                                    .emailValid(_model.textController1.text) ==
                                true) {
                              final usersUpdateData = createUsersRecordData(
                                email: _model.textController1.text,
                              );
                              await currentUserReference!
                                  .update(usersUpdateData);
                              setState(() {
                                _model.changeEmail = false;
                              });
                              setState(() {
                                _model.textController1?.clear();
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'please enter a vaild email',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              );
                            }
                          },
                          text: 'Save',
                          options: FFButtonOptions(
                            width: 80.0,
                            height: 25.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF398ED2),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.75, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 30.0,
                              icon: Icon(
                                FFIcons.kcancel,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                setState(() {
                                  _model.changeEmail = false;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Align(
                alignment: AlignmentDirectional(-0.8, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        _model.changeEmail = false;
                      });
                      setState(() {
                        _model.code = random_data.randomInteger(111111, 999999);
                      });
                      _model.emailver = await SendEmailVerCall.call(
                        fullname:
                            valueOrDefault(currentUserDocument?.fullName, ''),
                        email: currentUserEmail,
                        code: _model.code,
                      );
                      if ((_model.emailver?.succeeded ?? true)) {
                        setState(() {
                          _model.showcodeVer = true;
                        });
                        setState(() {
                          _model.disButton = true;
                        });
                        await Future.delayed(
                            const Duration(milliseconds: 5000));
                        setState(() {
                          _model.disButton = false;
                        });
                      } else {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (bottomSheetContext) {
                            return GestureDetector(
                              onTap: () => FocusScope.of(context)
                                  .requestFocus(_unfocusNode),
                              child: Padding(
                                padding: MediaQuery.of(bottomSheetContext)
                                    .viewInsets,
                                child: SomethingWentWoofWidget(
                                  error:
                                      '${(_model.emailver?.statusCode ?? 200).toString()}|||${(_model.emailver?.jsonBody ?? '').toString()}',
                                ),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      }

                      setState(() {});
                    },
                    text: 'Send verification code',
                    options: FFButtonOptions(
                      width: 190.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF43A4F1),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              if (_model.showcodeVer == true ? true : false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 211.0,
                        child: TextFormField(
                          controller: _model.textController2,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'code',
                            hintText: 'Enter the code here...',
                            hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: () {
                                  if (_model.codeColor == 0) {
                                    return Color(0x00000000);
                                  } else if (_model.codeColor == 1) {
                                    return FlutterFlowTheme.of(context).error;
                                  } else {
                                    return FlutterFlowTheme.of(context).success;
                                  }
                                }(),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).lineColor,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          keyboardType: TextInputType.emailAddress,
                          validator: _model.textController2Validator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (functions.codeCheck(
                                    _model.code, _model.textController2.text) ==
                                true) {
                              setState(() {
                                _model.codeColor = 2;
                              });
                              await Future.delayed(
                                  const Duration(milliseconds: 1000));

                              final usersUpdateData = createUsersRecordData(
                                emailVer: true,
                              );
                              await currentUserReference!
                                  .update(usersUpdateData);

                              context.pushNamed('home');
                            } else {
                              setState(() {
                                _model.codeColor = 1;
                              });
                            }
                          },
                          text: 'Check',
                          options: FFButtonOptions(
                            width: 80.0,
                            height: 25.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF398ED2),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (_model.codeColor == 2 ? true : false)
                Align(
                  alignment: AlignmentDirectional(-0.85, -0.95),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      'Your code is correct',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).success,
                          ),
                    ),
                  ),
                ),
              if (_model.codeColor == 1 ? true : false)
                Align(
                  alignment: AlignmentDirectional(-0.85, 0.0),
                  child: Text(
                    'Your code is incorrrect',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).error,
                        ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
