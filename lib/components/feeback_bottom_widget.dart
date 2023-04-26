import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feeback_bottom_model.dart';
export 'feeback_bottom_model.dart';

class FeebackBottomWidget extends StatefulWidget {
  const FeebackBottomWidget({Key? key}) : super(key: key);

  @override
  _FeebackBottomWidgetState createState() => _FeebackBottomWidgetState();
}

class _FeebackBottomWidgetState extends State<FeebackBottomWidget> {
  late FeebackBottomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeebackBottomModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        Navigator.pop(context);
        context.safePop();
      },
      child: Container(
        width: 511.0,
        height: 349.9,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/output-onlinegiftools.gif',
              width: 420.1,
              height: 248.8,
              fit: BoxFit.scaleDown,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 5.0),
              child: Text(
                'Your feedback is greatly appreciated! It helps us improve and provide better service. Thank you for taking the time to share your thoughts with us.',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
