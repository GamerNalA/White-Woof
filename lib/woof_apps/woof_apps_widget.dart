import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/change_chat_image_widget.dart';
import '/components/change_imge_display_image_widget.dart';
import '/components/confirm_chat_delete_widget.dart';
import '/components/confirm_image_delete_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'woof_apps_model.dart';
export 'woof_apps_model.dart';

class WoofAppsWidget extends StatefulWidget {
  const WoofAppsWidget({Key? key}) : super(key: key);

  @override
  _WoofAppsWidgetState createState() => _WoofAppsWidgetState();
}

class _WoofAppsWidgetState extends State<WoofAppsWidget>
    with TickerProviderStateMixin {
  late WoofAppsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'drawerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(-310.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WoofAppsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.editImg =
            'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgSEhUYGBgZGBgSGBgaGBgYGRgYGBgZGRgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHzQrJSs0NDQ2NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAOAA4QMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAACAwABBAUGB//EADgQAAEDAgQEBQMCBQMFAAAAAAEAAhEDIQQSMUEFUWFxEyKBkaEysfDR8QYUUsHhI0JyFWKCk6L/xAAZAQADAQEBAAAAAAAAAAAAAAAAA';
        _model.editTs = getCurrentTimestamp;
      });
    });

    _model.textController2 ??= TextEditingController();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        drawer: Drawer(
          elevation: 16.0,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 5.0),
            child: Container(
              width: 270.0,
              height: 800.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 2.0),
                  )
                ],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.95, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 18.0,
                      borderWidth: 1.0,
                      buttonSize: 45.0,
                      icon: Icon(
                        Icons.cancel_rounded,
                        color: Color(0x91DDE4E6),
                        size: 25.0,
                      ),
                      onPressed: () async {
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.05),
                    child: Container(
                      width: 76.0,
                      height: 76.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/white_woof-removebg-preview.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'home',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.topToBottom,
                                  duration: Duration(milliseconds: 1000),
                                ),
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent3,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-0.15, 0.2),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Home',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-3.5, 0.0),
                                  child: Icon(
                                    Icons.home,
                                    color: Color(0xFF57636C),
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'ChatInfo',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 1000),
                                ),
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent3,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.25, 0.0),
                                child: Icon(
                                  Icons.forum_rounded,
                                  color: Color(0xFF57636C),
                                  size: 28.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Chats',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'ImageGenerationInfo',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 1000),
                                ),
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent3,
                                  ),
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.solidImages,
                                color: Color(0xFF57636C),
                                size: 28.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Image Generator',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/images/testing.png',
                                    width: 29.9,
                                    height: 30.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'CodeGeneration',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 1000),
                                ),
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent3,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.code_rounded,
                                color: Color(0xFF57636C),
                                size: 28.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Code Generation',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/images/testing.png',
                                    width: 29.9,
                                    height: 30.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 4.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent3,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Image.asset(
                                'assets/images/6805674.png',
                                width: 30.0,
                                height: 30.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Speech to text',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: 35.0,
                              height: 35.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/22945040-removebg-preview.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Feedback',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 1000),
                                ),
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent3,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.feedback_outlined,
                                color: Color(0xFF57636C),
                                size: 28.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Feedback',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'credits',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 1000),
                                ),
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent3,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.person_search_sharp,
                                color: Color(0xFF57636C),
                                size: 28.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Credits',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'reportAbug',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 1000),
                              ),
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 4.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Image.asset(
                                  'assets/images/Screenshot_64-removebg-preview.png',
                                  width: 30.0,
                                  height: 30.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Report a Bug',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'about',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.bottomToTop,
                              duration: Duration(milliseconds: 1000),
                            ),
                          },
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent3,
                                  ),
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.questionCircle,
                                color: Color(0xFF57636C),
                                size: 28.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'About',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          height: 12.0,
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).accent3,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 9.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: CachedNetworkImage(
                                    imageUrl: currentUserPhoto,
                                    width: 44.0,
                                    height: 44.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          currentUserDisplayName,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        currentUserEmail,
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF57636C),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'settings',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .topToBottom,
                                                  duration: Duration(
                                                      milliseconds: 1000),
                                                ),
                                              },
                                            );
                                          },
                                          child: Text(
                                            'Settings',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF4B39EF),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          GoRouter.of(context)
                                              .prepareAuthEvent();
                                          await authManager.signOut();
                                          GoRouter.of(context)
                                              .clearRedirectLocation();

                                          context.goNamedAuth(
                                              'authstart', mounted);
                                        },
                                        text: 'Log out',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 32.2,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 2.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    valueOrDefault<String>(
                                      valueOrDefault(
                                              currentUserDocument?.cookies, 0)
                                          .toString(),
                                      '9999',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 30.0,
                                  height: 30.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/dog_cookie-circle.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ).animateOnActionTrigger(
          animationsMap['drawerOnActionTriggerAnimation']!,
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).appBar,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(-1.2, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-1.3, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).accent2,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-2.4, 0.0),
                    child: Text(
                      'Apps',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(1.3, -0.05),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        child: Container(
                          width: 55.0,
                          height: 55.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/whitee_woof9-removebg-preview.png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: Color(0xFF4B39EF),
                        unselectedLabelColor: Color(0xFF6FB5F3),
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF1D2429),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        indicatorColor: Color(0xFF4B39EF),
                        tabs: [
                          Tab(
                            text: 'chat',
                          ),
                          Tab(
                            text: 'image',
                            iconMargin: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    'Your chats',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF1D2429),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 12.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              functions.randImg(random_data
                                                  .randomInteger(1, 10)),
                                              width: 70.0,
                                              height: 70.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -0.4, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'New Chat',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30.0,
                                                borderWidth: 1.0,
                                                buttonSize: 60.0,
                                                fillColor: Color(0x26C9DBE9),
                                                icon: Icon(
                                                  Icons.add,
                                                  color: (Theme.of(context)
                                                                  .brightness ==
                                                              Brightness
                                                                  .dark) ==
                                                          true
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  size: 30.0,
                                                ),
                                                onPressed: () async {
                                                  _model.cust = await actions
                                                      .getchatnumber1(
                                                    currentUserUid,
                                                  );
                                                  setState(() {
                                                    _model.chatnumber =
                                                        _model.cust!;
                                                  });
                                                  setState(() {
                                                    _model.chatnumber =
                                                        _model.chatnumber + 1;
                                                  });

                                                  final chatsCreateData =
                                                      createChatsRecordData(
                                                    lastMessage:
                                                        'chat${_model.chatnumber.toString()}',
                                                    user1:
                                                        currentUserDisplayName,
                                                    user2: 'OpenAI',
                                                    ts: getCurrentTimestamp,
                                                    uid: currentUserUid,
                                                    image: functions.randImg(
                                                        random_data
                                                            .randomInteger(
                                                                1, 10)),
                                                  );
                                                  var chatsRecordReference =
                                                      ChatsRecord.collection
                                                          .doc();
                                                  await chatsRecordReference
                                                      .set(chatsCreateData);
                                                  _model.chatcreate = ChatsRecord
                                                      .getDocumentFromData(
                                                          chatsCreateData,
                                                          chatsRecordReference);

                                                  final chatMessagesCreateData =
                                                      createChatMessagesRecordData(
                                                    message: functions
                                                        .dogGreetingGen(
                                                            random_data
                                                                .randomInteger(
                                                                    1, 10)),
                                                    ts: getCurrentTimestamp,
                                                    uid: '',
                                                    user: 'OpenAI',
                                                  );
                                                  await ChatMessagesRecord
                                                          .createDoc(_model
                                                              .chatcreate!
                                                              .reference)
                                                      .set(
                                                          chatMessagesCreateData);

                                                  setState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                if (FFAppState().listandEditvis == true
                                    ? true
                                    : false)
                                  StreamBuilder<List<ChatsRecord>>(
                                    stream: queryChatsRecord(
                                      queryBuilder: (chatsRecord) => chatsRecord
                                          .where('uid',
                                              isEqualTo: currentUserUid)
                                          .orderBy('ts', descending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                        );
                                      }
                                      List<ChatsRecord>
                                          listViewChatsRecordList =
                                          snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewChatsRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewChatsRecord =
                                              listViewChatsRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 16.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'chat',
                                                  queryParams: {
                                                    'chatRef': serializeParam(
                                                      listViewChatsRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  12.0,
                                                                  8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              listViewChatsRecord
                                                                  .image!,
                                                              width: 70.0,
                                                              height: 70.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        0.0,
                                                                        30.0),
                                                            child: Text(
                                                              listViewChatsRecord
                                                                  .lastMessage!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.95, 0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 20.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 30.0,
                                                        hoverIconColor:
                                                            Color(0xD0101213),
                                                        icon: Icon(
                                                          Icons.edit_outlined,
                                                          color:
                                                              Color(0x2C101213),
                                                          size: 17.0,
                                                        ),
                                                        onPressed: () async {
                                                          setState(() {
                                                            _model.editRef =
                                                                listViewChatsRecord
                                                                    .reference;
                                                            _model.editMSGImg =
                                                                listViewChatsRecord
                                                                    .image!;
                                                            _model.editLastmsg =
                                                                listViewChatsRecord
                                                                    .lastMessage!;
                                                            _model.editTsMSG =
                                                                listViewChatsRecord
                                                                    .ts;
                                                          });
                                                          setState(() {
                                                            FFAppState()
                                                                    .listandEditvis =
                                                                false;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    188.0,
                                                                    24.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        25.0,
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    dateTimeFormat(
                                                                        'relative',
                                                                        listViewChatsRecord
                                                                            .ts),
                                                                    '32 months ago',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                if (FFAppState().listandEditvis == false
                                    ? true
                                    : false)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 0.0),
                                    child: StreamBuilder<ChatsRecord>(
                                      stream: ChatsRecord.getDocument(
                                          _model.editRef!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        final containerChatsRecord =
                                            snapshot.data!;
                                        return Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 8.0, 12.0, 8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder:
                                                              (bottomSheetContext) {
                                                            return GestureDetector(
                                                              onTap: () => FocusScope
                                                                      .of(
                                                                          context)
                                                                  .requestFocus(
                                                                      _unfocusNode),
                                                              child: Padding(
                                                                padding: MediaQuery.of(
                                                                        bottomSheetContext)
                                                                    .viewInsets,
                                                                child:
                                                                    ChangeChatImageWidget(
                                                                  chatref: _model
                                                                      .editRef,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() =>
                                                                _model.q123 =
                                                                    value));

                                                        setState(() {
                                                          _model.editMSGImg =
                                                              _model.q123!;
                                                        });

                                                        setState(() {});
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          containerChatsRecord
                                                              .image!,
                                                          width: 70.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  20.0,
                                                                  0.0,
                                                                  20.0),
                                                      child: Container(
                                                        width: 160.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                                  .textController1 ??=
                                                              TextEditingController(
                                                            text:
                                                                containerChatsRecord
                                                                    .lastMessage,
                                                          ),
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'enter name here...',
                                                            hintText:
                                                                containerChatsRecord
                                                                    .lastMessage,
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                            enabledBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            errorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            focusedErrorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          validator: _model
                                                              .textController1Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.95, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 30.0,
                                                  hoverIconColor:
                                                      Color(0xD0101213),
                                                  icon: Icon(
                                                    FFIcons.kcancel,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                    size: 17.0,
                                                  ),
                                                  onPressed: () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .listandEditvis =
                                                          true;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(188.0, 24.0,
                                                          0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.35, 1.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        55.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              dateTimeFormat(
                                                                  'relative',
                                                                  containerChatsRecord
                                                                      .ts!),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.75, 0.0),
                                                child:
                                                    StreamBuilder<ChatsRecord>(
                                                  stream:
                                                      ChatsRecord.getDocument(
                                                          _model.editRef!),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final iconButtonChatsRecord =
                                                        snapshot.data!;
                                                    return FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 20.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 30.0,
                                                      hoverIconColor:
                                                          Color(0xD0101213),
                                                      icon: Icon(
                                                        Icons.save,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        size: 17.0,
                                                      ),
                                                      onPressed: () async {
                                                        final chatsUpdateData =
                                                            createChatsRecordData(
                                                          lastMessage: _model
                                                              .textController1
                                                              .text,
                                                        );
                                                        await _model.editRef!
                                                            .update(
                                                                chatsUpdateData);
                                                        setState(() {
                                                          _model.editLastmsg =
                                                              iconButtonChatsRecord
                                                                  .lastMessage!;
                                                        });
                                                        setState(() {
                                                          _model.textController1
                                                              ?.clear();
                                                        });
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.55, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 30.0,
                                                  hoverIconColor:
                                                      Color(0xD0101213),
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.trashAlt,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                    size: 17.0,
                                                  ),
                                                  onPressed: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder:
                                                          (bottomSheetContext) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(
                                                                  _unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery.of(
                                                                    bottomSheetContext)
                                                                .viewInsets,
                                                            child:
                                                                ConfirmChatDeleteWidget(
                                                              chatref: _model
                                                                  .editRef,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    'Your images',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF1D2429),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 12.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              functions.randImg(random_data
                                                  .randomInteger(1, 10)),
                                              width: 70.0,
                                              height: 70.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -0.4, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'New Image',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30.0,
                                                borderWidth: 1.0,
                                                buttonSize: 60.0,
                                                icon: Icon(
                                                  Icons.add,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 30.0,
                                                ),
                                                onPressed: () async {
                                                  _model.imgst =
                                                      await actions.genImagenum(
                                                    currentUserUid,
                                                  );
                                                  setState(() {
                                                    _model.chatnumber =
                                                        _model.imgst!;
                                                  });
                                                  setState(() {
                                                    _model.chatnumber =
                                                        _model.chatnumber + 1;
                                                  });

                                                  final imagesCreateData =
                                                      createImagesRecordData(
                                                    uid: currentUserUid,
                                                    name:
                                                        'Image/s${_model.chatnumber.toString()}',
                                                    dispayImage: functions
                                                        .randImg(random_data
                                                            .randomInteger(
                                                                1, 10)),
                                                    ts: getCurrentTimestamp,
                                                  );
                                                  var imagesRecordReference =
                                                      ImagesRecord.collection
                                                          .doc();
                                                  await imagesRecordReference
                                                      .set(imagesCreateData);
                                                  _model.imagecreate = ImagesRecord
                                                      .getDocumentFromData(
                                                          imagesCreateData,
                                                          imagesRecordReference);

                                                  final imagedataCreateData =
                                                      createImagedataRecordData();
                                                  await ImagedataRecord
                                                          .createDoc(_model
                                                              .imagecreate!
                                                              .reference)
                                                      .set(imagedataCreateData);

                                                  context.pushNamed(
                                                    'imageCreate',
                                                    queryParams: {
                                                      'imagesref':
                                                          serializeParam(
                                                        _model.imagecreate!
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .bottomToTop,
                                                        duration: Duration(
                                                            milliseconds: 1000),
                                                      ),
                                                    },
                                                  );

                                                  setState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                if (FFAppState().listAndEditVisimg == true
                                    ? true
                                    : false)
                                  StreamBuilder<List<ImagesRecord>>(
                                    stream: queryImagesRecord(
                                      queryBuilder: (imagesRecord) =>
                                          imagesRecord
                                              .where('uid',
                                                  isEqualTo: currentUserUid)
                                              .orderBy('ts', descending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                        );
                                      }
                                      List<ImagesRecord>
                                          listViewImagesRecordList =
                                          snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewImagesRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewImagesRecord =
                                              listViewImagesRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 16.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'imageView',
                                                  queryParams: {
                                                    'imageRef': serializeParam(
                                                      listViewImagesRecord
                                                          .reference,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                  }.withoutNulls,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .bottomToTop,
                                                      duration: Duration(
                                                          milliseconds: 1000),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  12.0,
                                                                  8.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              listViewImagesRecord
                                                                  .dispayImage!,
                                                              width: 70.0,
                                                              height: 70.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        0.0,
                                                                        30.0),
                                                            child: Text(
                                                              listViewImagesRecord
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.95, 0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 20.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 30.0,
                                                        hoverIconColor:
                                                            Color(0xD0101213),
                                                        icon: Icon(
                                                          Icons.edit_outlined,
                                                          color:
                                                              Color(0x2C101213),
                                                          size: 17.0,
                                                        ),
                                                        onPressed: () async {
                                                          setState(() {
                                                            _model.imgImgRef =
                                                                listViewImagesRecord
                                                                    .reference;
                                                          });
                                                          setState(() {
                                                            FFAppState()
                                                                    .listAndEditVisimg =
                                                                false;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    188.0,
                                                                    24.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        25.0,
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    dateTimeFormat(
                                                                        'relative',
                                                                        listViewImagesRecord
                                                                            .ts),
                                                                    '32 months ago',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                if (FFAppState().listAndEditVisimg == false
                                    ? true
                                    : false)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 0.0),
                                    child: StreamBuilder<ImagesRecord>(
                                      stream: ImagesRecord.getDocument(
                                          _model.imgImgRef!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        final containerImagesRecord =
                                            snapshot.data!;
                                        return Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 8.0, 12.0, 8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder:
                                                              (bottomSheetContext) {
                                                            return GestureDetector(
                                                              onTap: () => FocusScope
                                                                      .of(
                                                                          context)
                                                                  .requestFocus(
                                                                      _unfocusNode),
                                                              child: Padding(
                                                                padding: MediaQuery.of(
                                                                        bottomSheetContext)
                                                                    .viewInsets,
                                                                child:
                                                                    ChangeImgeDisplayImageWidget(
                                                                  imgRefe:
                                                                      containerImagesRecord
                                                                          .reference,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() => _model
                                                                    .imgoutput =
                                                                value));

                                                        setState(() {
                                                          _model.editMSGImg =
                                                              _model.imgoutput!;
                                                        });

                                                        setState(() {});
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            containerImagesRecord
                                                                .dispayImage,
                                                            'data:image/jpeg;base64,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',
                                                          ),
                                                          width: 70.0,
                                                          height: 70.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 160.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController2,
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'enter name here...',
                                                            hintText:
                                                                containerImagesRecord
                                                                    .name,
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                            enabledBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            errorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                            focusedErrorBorder:
                                                                UnderlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        4.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        4.0),
                                                              ),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          validator: _model
                                                              .textController2Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.95, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 30.0,
                                                  hoverIconColor:
                                                      Color(0xD0101213),
                                                  icon: Icon(
                                                    FFIcons.kcancel,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                    size: 17.0,
                                                  ),
                                                  onPressed: () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .listAndEditVisimg =
                                                          true;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(188.0, 24.0,
                                                          0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -0.25, 0.2),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        25.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              dateTimeFormat(
                                                                  'relative',
                                                                  containerImagesRecord
                                                                      .ts!),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.75, 0.0),
                                                child:
                                                    StreamBuilder<ImagesRecord>(
                                                  stream:
                                                      ImagesRecord.getDocument(
                                                          _model.imgImgRef!),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final iconButtonImagesRecord =
                                                        snapshot.data!;
                                                    return FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 20.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 30.0,
                                                      hoverIconColor:
                                                          Color(0xD0101213),
                                                      icon: Icon(
                                                        Icons.save,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent2,
                                                        size: 17.0,
                                                      ),
                                                      onPressed: () async {
                                                        final imagesUpdateData =
                                                            createImagesRecordData(
                                                          name: _model
                                                              .textController2
                                                              .text,
                                                        );
                                                        await _model.imgImgRef!
                                                            .update(
                                                                imagesUpdateData);
                                                        setState(() {
                                                          _model.textController1
                                                              ?.clear();
                                                        });
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.55, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 30.0,
                                                  hoverIconColor:
                                                      Color(0xD0101213),
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.trashAlt,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                    size: 17.0,
                                                  ),
                                                  onPressed: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder:
                                                          (bottomSheetContext) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(
                                                                  _unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery.of(
                                                                    bottomSheetContext)
                                                                .viewInsets,
                                                            child:
                                                                ConfirmImageDeleteWidget(
                                                              imageRef: _model
                                                                  .imgImgRef,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
