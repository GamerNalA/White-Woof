import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'cheking_for_updates_model.dart';
export 'cheking_for_updates_model.dart';

class ChekingForUpdatesWidget extends StatefulWidget {
  const ChekingForUpdatesWidget({Key? key}) : super(key: key);

  @override
  _ChekingForUpdatesWidgetState createState() =>
      _ChekingForUpdatesWidgetState();
}

class _ChekingForUpdatesWidgetState extends State<ChekingForUpdatesWidget> {
  late ChekingForUpdatesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChekingForUpdatesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.progressBarValue = 0.1;
      });
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 30),
        callback: (timer) async {
          if (_model.progressBarValue == 0.9) {
            Navigator.pop(context, true);
            _model.instantTimer?.cancel();
          } else {
            setState(() {
              _model.progressBarValue = _model.progressBarValue + 0.1;
            });
            setState(() {
              _model.textValue = _model.textValue + 1;
            });
          }
        },
        startImmediately: true,
      );
    });
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
      width: double.infinity,
      height: 196.6,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              'Checking for updates',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontSize: 25.0,
                  ),
            ),
          ),
          CircularPercentIndicator(
            percent: _model.progressBarValue,
            radius: 60.0,
            lineWidth: 24.0,
            animation: true,
            progressColor: FlutterFlowTheme.of(context).primary,
            backgroundColor: FlutterFlowTheme.of(context).accent4,
            center: Text(
              formatNumber(
                _model.textValue,
                formatType: FormatType.decimal,
                decimalType: DecimalType.automatic,
                currency: '%',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primary,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
