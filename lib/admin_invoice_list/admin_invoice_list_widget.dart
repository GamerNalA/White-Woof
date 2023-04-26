import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_invoice_list_model.dart';
export 'admin_invoice_list_model.dart';

class AdminInvoiceListWidget extends StatefulWidget {
  const AdminInvoiceListWidget({Key? key}) : super(key: key);

  @override
  _AdminInvoiceListWidgetState createState() => _AdminInvoiceListWidgetState();
}

class _AdminInvoiceListWidgetState extends State<AdminInvoiceListWidget> {
  late AdminInvoiceListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminInvoiceListModel());
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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.3, 0.0),
            child: Text(
              'All the inovices',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 22.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: StreamBuilder<List<CompletedRecord>>(
            stream: queryCompletedRecord(
              queryBuilder: (completedRecord) =>
                  completedRecord.orderBy('ts', descending: true),
            ),
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
              List<CompletedRecord> chatslistCompletedRecordList =
                  snapshot.data!;
              return ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: chatslistCompletedRecordList.length,
                itemBuilder: (context, chatslistIndex) {
                  final chatslistCompletedRecord =
                      chatslistCompletedRecordList[chatslistIndex];
                  return Container(
                    width: 435.6,
                    height: 84.4,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'adminInvoiceView',
                          queryParams: {
                            'completedRef': serializeParam(
                              chatslistCompletedRecord.reference,
                              ParamType.DocumentReference,
                            ),
                            'userRef': serializeParam(
                              chatslistCompletedRecord.userRef,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.15, -0.7),
                            child: Text(
                              chatslistCompletedRecord.username!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.5, 0.01),
                            child: Text(
                              formatNumber(
                                chatslistCompletedRecord.amount!,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.automatic,
                                currency: '€',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.9, 0.85),
                            child: Text(
                              dateTimeFormat(
                                  'relative', chatslistCompletedRecord.ts!),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Image.network(
                              chatslistCompletedRecord.userimage!,
                              width: 80.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
