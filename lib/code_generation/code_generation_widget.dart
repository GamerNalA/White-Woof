import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'code_generation_model.dart';
export 'code_generation_model.dart';

class CodeGenerationWidget extends StatefulWidget {
  const CodeGenerationWidget({Key? key}) : super(key: key);

  @override
  _CodeGenerationWidgetState createState() => _CodeGenerationWidgetState();
}

class _CodeGenerationWidgetState extends State<CodeGenerationWidget> {
  late CodeGenerationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodeGenerationModel());
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
            'Code Generation',
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
                    'White Woof AI is a powerful tool that can generate code from text, and it\'s included in the White Woof Chat System. This chat system uses super-smart technology to give you pawsome answers to all your pup-related questions with a whopping 99% certainty! Whether you want to know about your doggo\'s eating habits, exercise needs, or quirky behaviors, White Woof Chat System has got your tail covered. And with the added functionality of code generation, you can use this system to generate custom code in languages like C#, C++, Python, and more. With its wag-tastic interface and easy-to-use design, you\'ll be able to chat with your furry best friend and generate code like never before. Give it a try today and unleash the power of White Woof Chat System for a happier, healthier pup!',
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
                    'here are four reasons why you might want to use White Woof AI to generate code from text:\n\n1.Time-saving: Generating code from scratch can be a time-consuming and tedious process, especially for complex programming languages. With White Woof AI, you can save time by generating custom code quickly and easily. This allows you to focus on other aspects of your project, such as debugging or testing.\n\n2.Accuracy: White Woof AI\'s advanced algorithms ensure a high level of accuracy in the generated code. This reduces the risk of errors or bugs that can occur when coding manually. With White Woof AI, you can trust that your code will be correct and efficient.\n\n3.Customization: The system can generate code based on your specific needs, allowing you to customize the code to your preferences. This can help you create unique and tailored solutions for your programming challenges.\n\n4.Accessibility: White Woof AI is designed to be user-friendly and accessible to programmers of all skill levels. Whether you\'re a seasoned developer or just starting out, you can benefit from the power of White Woof AI to generate code that meets your needs.',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.goNamed('woofApps');
                  },
                  text: 'Try the White Woof Code generation',
                  options: FFButtonOptions(
                    width: 298.5,
                    height: 52.2,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF78D6F7),
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
