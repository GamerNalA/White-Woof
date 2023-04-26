import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'appcept_payment_model.dart';
export 'appcept_payment_model.dart';

class AppceptPaymentWidget extends StatefulWidget {
  const AppceptPaymentWidget({
    Key? key,
    this.payRef,
    this.userRef,
  }) : super(key: key);

  final DocumentReference? payRef;
  final DocumentReference? userRef;

  @override
  _AppceptPaymentWidgetState createState() => _AppceptPaymentWidgetState();
}

class _AppceptPaymentWidgetState extends State<AppceptPaymentWidget> {
  late AppceptPaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppceptPaymentModel());
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

    return StreamBuilder<PayRecord>(
      stream: PayRecord.getDocument(widget.payRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final appceptPaymentPayRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).appBar,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xFFC9DBE9),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Accept user payment',
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
                  Expanded(
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.1, -0.85),
                          child: Text(
                            appceptPaymentPayRecord.username!,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 30.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.1, -0.7),
                          child: Container(
                            width: 120.0,
                            height: 120.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              appceptPaymentPayRecord.userimage!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -0.2),
                          child: Text(
                            appceptPaymentPayRecord.amount!.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -0.35),
                          child: Text(
                            formatNumber(
                              appceptPaymentPayRecord.cookieAmount!,
                              formatType: FormatType.custom,
                              currency: 'cookies ',
                              format: '',
                              locale: '',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 21.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.15),
                          child: StreamBuilder<UsersRecord>(
                            stream: UsersRecord.getDocument(widget.userRef!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                );
                              }
                              final buttonUsersRecord = snapshot.data!;
                              return FFButtonWidget(
                                onPressed: () async {
                                  final usersUpdateData = {
                                    'cookies': FieldValue.increment(
                                        appceptPaymentPayRecord.cookieAmount!),
                                  };
                                  await widget.userRef!.update(usersUpdateData);
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('saved'),
                                        content: Text(
                                            'cookie data has been saved with success'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  final completedCreateData =
                                      createCompletedRecordData(
                                    username: appceptPaymentPayRecord.username,
                                    userRef: widget.userRef,
                                    ts: getCurrentTimestamp,
                                    cookieAmount:
                                        appceptPaymentPayRecord.cookieAmount,
                                    userid: buttonUsersRecord.uid,
                                    userimage:
                                        appceptPaymentPayRecord.userimage,
                                    amount: appceptPaymentPayRecord.amount,
                                  );
                                  var completedRecordReference =
                                      CompletedRecord.collection.doc();
                                  await completedRecordReference
                                      .set(completedCreateData);
                                  _model.qwert =
                                      CompletedRecord.getDocumentFromData(
                                          completedCreateData,
                                          completedRecordReference);
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('poss err'),
                                        content: Text(
                                            '${_model.qwert!.username}${_model.qwert!.userRef?.id}${_model.qwert!.cookieAmount?.toString()}'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  setState(() {});
                                },
                                text: 'Accept payment',
                                options: FFButtonOptions(
                                  width: 160.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                  elevation: 2.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -0.05),
                          child: Text(
                            dateTimeFormat(
                                'd/M h:mm a', appceptPaymentPayRecord.ts!),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 20.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
