import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_info_model.dart';
export 'chat_info_model.dart';

class ChatInfoWidget extends StatefulWidget {
  const ChatInfoWidget({Key? key}) : super(key: key);

  @override
  _ChatInfoWidgetState createState() => _ChatInfoWidgetState();
}

class _ChatInfoWidgetState extends State<ChatInfoWidget> {
  late ChatInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatInfoModel());
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
            'Feedback',
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
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 15.0),
                  child: Text(
                    'White Woof Chat System is an awesome tool that uses super-smart technology to give you pawsome answers to all your pup-related questions! Whether you want to know about your doggo\'s eating habits, exercise needs, or quirky behaviors, White Woof Chat System has got your tail covered. It\'s so smart, it can analyze dog behavior and give you answers with a whopping 99% certainty! With its wag-tastic interface and easy-to-use design, you\'ll be able to chat with your furry best friend like never before. Give it a try today and unleash the power of White Woof Chat System for a happier, healthier pup!',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                  child: Text(
                    ' here are three reasons why you might want to use White Woof Chat System:\n\n1.Accurate answers: With a 99% certainty rate, White Woof Chat System provides accurate answers to your dog-related questions. This can help you better understand your furry friend\'s behavior, health, and needs, ultimately leading to a happier and healthier pup.\n\n2.Convenient and easy-to-use: White Woof Chat System is designed with dog owners in mind, providing an intuitive interface and simple navigation to make getting answers a breeze. You can chat with the system from the comfort of your own home, without having to schedule an appointment with a veterinarian or behaviorist.\n\n3.Free trial and cookies: To get started with White Woof Chat System, you\'ll receive 25 free cookies to test out the system. This allows you to see firsthand how the system works and how it can benefit you and your pup before committing to a subscription.',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.goNamed('woofApps');
                  },
                  text: 'Try the White Woof Chat',
                  options: FFButtonOptions(
                    width: 298.5,
                    height: 52.2,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF4E7DD3),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
