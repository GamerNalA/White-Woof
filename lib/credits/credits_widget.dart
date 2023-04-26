import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'credits_model.dart';
export 'credits_model.dart';

class CreditsWidget extends StatefulWidget {
  const CreditsWidget({Key? key}) : super(key: key);

  @override
  _CreditsWidgetState createState() => _CreditsWidgetState();
}

class _CreditsWidgetState extends State<CreditsWidget> {
  late CreditsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreditsModel());
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
          backgroundColor: FlutterFlowTheme.of(context).lineColor,
          automaticallyImplyLeading: false,
          title: Text(
            'Credits',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lexend Deca',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                buttonSize: 48.0,
                icon: Icon(
                  Icons.close_rounded,
                  color: Color(0xFF95A1AC),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'The images listed below are designed by freepik',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.spaceEvenly,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Image.network(
                      'https://www.linkpicture.com/q/dog1_2.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog2_2.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog3.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog4.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog5.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog6_1.webp',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog7.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog9.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog10_1.webp',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog11.jpg',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/check-mark-correct-approved-icon-symbol-white-background-3d-illustration_56104-1545-removebg-preview_(1).png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/white-woof.appspot.com/o/image%20upload%202.png?alt=media&token=c030b1c3-1c67-4fa2-b0b6-c52fd834f95e',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(-0.7, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Somenthing went woof credit to amazon dogs',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 0.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/something_went_woof.png',
                        width: 203.4,
                        height: 135.0,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.05, 0.2),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: Container(
                            width: 123.5,
                            height: 51.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.7, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                    child: SelectionArea(
                        child: Text(
                      'Check Ok  animation credit to RainToMe \n\nhttps://giphy.com/gifs/check-verified-checking-tf9jjMcO77YzV4YPwE',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
                  child: Image.asset(
                    'assets/images/output-onlinegiftools.gif',
                    width: 200.3,
                    height: 159.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.7, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                    child: SelectionArea(
                        child: Text(
                      'Pay online Idea from \n\nhttps://townofempire.colorado.gov/',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/images/imgonline-com-ua-ReplaceColor-0zCW3attkKFa-removebg-preview.png',
                    width: 201.3,
                    height: 46.6,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.7, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Coming soon image credit to VectorStock\n\nhttps://www.vectorstock.com/royalty-free-vector/coming-soon-icon-promotion-announcement-symbol-vector-22945040',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/images/22945040-removebg-preview.png',
                    width: 154.0,
                    height: 135.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'The images listed below are designed by dreamstime',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.spaceEvenly,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Image.network(
                      'https://www.linkpicture.com/q/basset-hound-dog-looking-up-19077967-transformed-removebg-preview.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.scaleDown,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/black-cute-dog-looking-camera-isolated-white-background-36701880-transformed-removebg-preview.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.fitHeight,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/crossbreed-dog-looking-laptop-27272047-transformed-removebg-preview.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.scaleDown,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog-looking-you-26053168-transformed-removebg-preview.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.scaleDown,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/dog-looking-you-jack-russell-staring-lying-ground-floor-isolated-white-background-51843490-transformed-removebg-preview.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.scaleDown,
                    ),
                    Image.network(
                      'https://www.linkpicture.com/q/lovely-labrador-retriever-dog-red-bandana-looking-down-white-background-wearing-sticking-out-tongue-panting-sitting-211913087-transformed-removebg-preview.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 30.0, 15.0, 0.0),
                  child: Text(
                    'Please contact me trough feedback if I did not mention the image that is in the app and is yours after all documentation if you proove it is yours I will add it to credits',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 220.0, 0.0),
                  child: Text(
                    'Author: Roko Duic',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
