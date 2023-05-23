import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'clientes_list_model.dart';
export 'clientes_list_model.dart';

class ClientesListWidget extends StatefulWidget {
  const ClientesListWidget({Key? key}) : super(key: key);

  @override
  _ClientesListWidgetState createState() => _ClientesListWidgetState();
}

class _ClientesListWidgetState extends State<ClientesListWidget>
    with TickerProviderStateMixin {
  late ClientesListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 70.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientesListModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: !isWeb
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  FFLocalizations.of(context).getText(
                    'fcyoodds' /* Customers */,
                  ),
                  style: FlutterFlowTheme.of(context).displaySmall,
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Container(
                              width: double.infinity,
                              height: 34.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'n99lg1qh' /* Customers */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall,
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  StreamBuilder<List<ClientesRecord>>(
                                    stream: queryClientesRecord(
                                      singleRecord: true,
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
                                      List<ClientesRecord>
                                          iconButtonClientesRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final iconButtonClientesRecord =
                                          iconButtonClientesRecordList
                                                  .isNotEmpty
                                              ? iconButtonClientesRecordList
                                                  .first
                                              : null;
                                      return FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 60.0,
                                        icon: Icon(
                                          Icons.search_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          await queryClientesRecordOnce()
                                              .then(
                                                (records) => _model
                                                        .simpleSearchResults =
                                                    TextSearch(
                                                  records
                                                      .map(
                                                        (record) =>
                                                            TextSearchItem(
                                                                record, [
                                                          record
                                                              .numeroDeContacto!,
                                                          record.domicilio!,
                                                          record.giro!,
                                                          record
                                                              .numeroDePredial!,
                                                          record
                                                              .nombreDeCliente!
                                                        ]),
                                                      )
                                                      .toList(),
                                                )
                                                        .search(
                                                            iconButtonClientesRecord!
                                                                .nombreDeCliente)
                                                        .map((r) => r.object)
                                                        .toList(),
                                              )
                                              .onError((_, __) => _model
                                                  .simpleSearchResults = [])
                                              .whenComplete(
                                                  () => setState(() {}));
                                        },
                                      );
                                    },
                                  ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                      'clientenuevo',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 4.0, 0.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: MediaQuery.of(context).size.height * 0.94,
                              decoration: BoxDecoration(),
                              child: DefaultTabController(
                                length: 1,
                                initialIndex: 0,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment(0.0, 0),
                                      child: TabBar(
                                        labelColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        unselectedLabelColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleMedium,
                                        indicatorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        indicatorWeight: 3.0,
                                        tabs: [
                                          Tab(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'lvnskphp' /* Lista de clientes */,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 24.0),
                                            child: Container(
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: FutureBuilder<
                                                  List<ClientesRecord>>(
                                                future: (_model
                                                            .firestoreRequestCompleter ??=
                                                        Completer<
                                                            List<
                                                                ClientesRecord>>()
                                                          ..complete(
                                                              queryClientesRecordOnce()))
                                                    .future,
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
                                                  List<ClientesRecord>
                                                      listViewClientesRecordList =
                                                      snapshot.data!;
                                                  return RefreshIndicator(
                                                    onRefresh: () async {
                                                      setState(() => _model
                                                              .firestoreRequestCompleter =
                                                          null);
                                                      await _model
                                                          .waitForFirestoreRequestCompleted();
                                                    },
                                                    child: ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewClientesRecordList
                                                              .length,
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewClientesRecord =
                                                            listViewClientesRecordList[
                                                                listViewIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      8.0,
                                                                      16.0,
                                                                      0.0),
                                                          child: StreamBuilder<
                                                              List<
                                                                  ClientesRecord>>(
                                                            stream:
                                                                queryClientesRecord(
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ClientesRecord>
                                                                  containerClientesRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final containerClientesRecord =
                                                                  containerClientesRecordList
                                                                          .isNotEmpty
                                                                      ? containerClientesRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context.pushNamed(
                                                                      'userDetails');
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            3.0,
                                                                        color: Color(
                                                                            0x20000000),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            12.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                child: StreamBuilder<List<ClientesRecord>>(
                                                                                  stream: queryClientesRecord(
                                                                                    singleRecord: true,
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
                                                                                    List<ClientesRecord> textClientesRecordList = snapshot.data!;
                                                                                    // Return an empty Container when the item does not exist.
                                                                                    if (snapshot.data!.isEmpty) {
                                                                                      return Container();
                                                                                    }
                                                                                    final textClientesRecord = textClientesRecordList.isNotEmpty ? textClientesRecordList.first : null;
                                                                                    return Text(
                                                                                      textClientesRecord!.nombreDeCliente,
                                                                                      style: FlutterFlowTheme.of(context).titleMedium,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 2.0, 0.0, 0.0),
                                                                                child: StreamBuilder<List<ClientesRecord>>(
                                                                                  stream: queryClientesRecord(
                                                                                    singleRecord: true,
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
                                                                                    List<ClientesRecord> textClientesRecordList = snapshot.data!;
                                                                                    // Return an empty Container when the item does not exist.
                                                                                    if (snapshot.data!.isEmpty) {
                                                                                      return Container();
                                                                                    }
                                                                                    final textClientesRecord = textClientesRecordList.isNotEmpty ? textClientesRecordList.first : null;
                                                                                    return Text(
                                                                                      textClientesRecord!.domicilio,
                                                                                      style: FlutterFlowTheme.of(context).bodySmall,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                child: StreamBuilder<List<ClientesRecord>>(
                                                                                  stream: queryClientesRecord(
                                                                                    singleRecord: true,
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
                                                                                    List<ClientesRecord> textClientesRecordList = snapshot.data!;
                                                                                    // Return an empty Container when the item does not exist.
                                                                                    if (snapshot.data!.isEmpty) {
                                                                                      return Container();
                                                                                    }
                                                                                    final textClientesRecord = textClientesRecordList.isNotEmpty ? textClientesRecordList.first : null;
                                                                                    return Text(
                                                                                      textClientesRecord!.numeroDeContacto,
                                                                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            fontSize: 20.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                          ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Icon(
                                                                          Icons
                                                                              .east,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'containerOnPageLoadAnimation1']!);
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
          ],
        ),
      ),
    );
  }
}
