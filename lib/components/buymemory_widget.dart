import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'buymemory_model.dart';
export 'buymemory_model.dart';

class BuymemoryWidget extends StatefulWidget {
  const BuymemoryWidget({Key? key}) : super(key: key);

  @override
  _BuymemoryWidgetState createState() => _BuymemoryWidgetState();
}

class _BuymemoryWidgetState extends State<BuymemoryWidget> {
  late BuymemoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuymemoryModel());
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
      width: 420.0,
      height: 294.4,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/something_went_woof.png',
            width: 415.4,
            height: 286.6,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: AlignmentDirectional(1.0, 0.05),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Container(
                width: 287.6,
                height: 137.6,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
                child: Align(
                  alignment: AlignmentDirectional(-0.4, -0.85),
                  child: Text(
                    'Looks like your furry friend has a case of forgetful fetch - he may need a bit of help to remember all your commands! But with a little training and guidance, he\'ll be a pro in no time.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Color(0x6D6B6A71),
                          fontSize: 13.0,
                        ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.25, 0.55),
            child: FFButtonWidget(
              onPressed: () async {
                Navigator.pop(context);

                context.pushNamed(
                  'cookiePrices',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.bottomToTop,
                      duration: Duration(milliseconds: 1000),
                    ),
                  },
                );
              },
              text: 'Train him',
              options: FFButtonOptions(
                width: 130.0,
                height: 25.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
        ],
      ),
    );
  }
}
