import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'something_went_woof_model.dart';
export 'something_went_woof_model.dart';

class SomethingWentWoofWidget extends StatefulWidget {
  const SomethingWentWoofWidget({
    Key? key,
    String? error,
  })  : this.error = error ?? 'a',
        super(key: key);

  final String error;

  @override
  _SomethingWentWoofWidgetState createState() =>
      _SomethingWentWoofWidgetState();
}

class _SomethingWentWoofWidgetState extends State<SomethingWentWoofWidget> {
  late SomethingWentWoofModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SomethingWentWoofModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 476.6,
      height: 317.7,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/something_went_woof.png',
            width: 477.3,
            height: 325.4,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: AlignmentDirectional(1.0, 0.1),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Container(
                width: 283.9,
                height: 122.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.55, -0.85),
                            child: SelectionArea(
                                child: AutoSizeText(
                              _model.error == false
                                  ? 'Woof! Something went wrong, and it\'s possible that your internet connection is unstable. You should also check if the app is updated to avoid further issues. Stay pawsitive and keep those updates coming!'
                                  : valueOrDefault<String>(
                                      widget.error,
                                      '1',
                                    ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0x6D6B6A71),
                                    fontSize: 13.0,
                                  ),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.95, -0.95),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.cancel_sharp,
                color: Color(0x91DDE4E6),
                size: 20.0,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.9, -0.57),
            child: ToggleIcon(
              onPressed: () async {
                setState(() => _model.error = !_model.error);
              },
              value: _model.error,
              onIcon: Icon(
                Icons.error_sharp,
                color: Color(0x77E21C3D),
                size: 15.0,
              ),
              offIcon: Icon(
                Icons.error_outline,
                color: Color(0xFA101213),
                size: 15.0,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(1.0, -0.55),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 30.0,
              icon: Icon(
                Icons.content_copy,
                color: Color(0xFD101213),
                size: 15.0,
              ),
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: widget.error));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'copied to clipboard',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.25, 0.6),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 3.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Ok',
                options: FFButtonOptions(
                  width: 130.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF7AB9E9),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w100,
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
