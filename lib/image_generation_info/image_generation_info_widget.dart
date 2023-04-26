import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'image_generation_info_model.dart';
export 'image_generation_info_model.dart';

class ImageGenerationInfoWidget extends StatefulWidget {
  const ImageGenerationInfoWidget({Key? key}) : super(key: key);

  @override
  _ImageGenerationInfoWidgetState createState() =>
      _ImageGenerationInfoWidgetState();
}

class _ImageGenerationInfoWidgetState extends State<ImageGenerationInfoWidget> {
  late ImageGenerationInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageGenerationInfoModel());
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
            'Image Generation',
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
                    'White Woof Image Generation is a groundbreaking technology that uses the power of woof to generate images from text. This advanced system is designed to help dog owners create personalized images of their furry friends with just a few words. White Woof Image Generation can create a custom image of your dog from any your text the exact scenario. This can be a fun and creative way to capture special moments with your pup or create unique social media content. With its simple interface and powerful technology, White Woof Image Generation is the perfect tool for dog lovers looking to create memorable images of their furry best friends.',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                  child: Text(
                    ' here are three reasons why you might want to use White Woof Image Generation:\n\n1.Personalized images: White Woof Image Generation allows you to create personalized images of your dog based on your input. You can create images of your furry friend playing in the park, taking a nap, or doing other activities that you and your pup enjoy. This can be a fun and creative way to capture special moments and memories with your furry best friend.\n\n2.Easy to use: The system is designed to be user-friendly, with a simple interface that makes it easy to create images from text. You don\'t need any special skills or software to use it. Simply input your text, and White Woof Image Generation will do the rest.\n\n3.Unique content creation: If you\'re a dog owner who likes to share photos of your pup on social media, White Woof Image Generation can help you create unique and engaging content. You can use the images to tell a story or showcase your dog\'s personality, which can help increase your followers and engagement on social media.',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.goNamed('woofApps');
                  },
                  text: 'Try the White Woof Image generator',
                  options: FFButtonOptions(
                    width: 298.5,
                    height: 52.2,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF148EDE),
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
