import '../auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import 'package:intl/intl.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'clientenuevo_model.dart';
export 'clientenuevo_model.dart';

class ClientenuevoWidget extends StatefulWidget {
  const ClientenuevoWidget({Key? key}) : super(key: key);

  @override
  _ClientenuevoWidgetState createState() => _ClientenuevoWidgetState();
}

class _ClientenuevoWidgetState extends State<ClientenuevoWidget> {
  late ClientenuevoModel _model;
  late Map<String, dynamic> _clientenuevoRecord;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  get datePicked => null;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientenuevoModel());

    _model.nombreDeClienteController ??= TextEditingController();
    _model.numeroDeContactoController ??= TextEditingController();
    _model.direccionController ??= TextEditingController();
    _model.costoDeRentaController ??= TextEditingController();
    _model.giroController ??= TextEditingController();
    _model.numeroDePredialController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));

    var format = NumberFormat('#,###');
    var costoDeRentaValue = _model.costoDeRentaController!.text.isNotEmpty
        ? _model.costoDeRentaController!.text
        : '0';
    var costoDeRentaFormatted = format.format(double.parse(costoDeRentaValue));

    _clientenuevoRecord = {
      'nombre_de_cliente': _model.nombreDeClienteController?.text ?? '',
      'numero_de_contacto': _model.numeroDeContactoController?.text ?? '',
      'direccion': _model.direccionController?.text ?? '',
      'costo_de_renta': double.parse(costoDeRentaFormatted),
      'giro': _model.giroController?.text ?? '',
      'numero_de_predial': _model.numeroDePredialController?.text ?? '',
      'datePicked': datePicked ?? '',
    };
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 140.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              100.0, 100.0, 0.0, 1.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'jiq2okb1' /* Cliente Nuevo */,
                            ),
                            style: FlutterFlowTheme.of(context).displaySmall,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.65, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context)
                                  .backgroundComponents,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor:
                                  FlutterFlowTheme.of(context).primary600,
                              icon: Icon(
                                Icons.arrow_back,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        );
                      }
                      // ignore: unused_local_variable
                      List<ClientesRecord> containerClientesRecordList;
                      containerClientesRecordList = snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      var inputDecoration = InputDecoration(
                        labelText: 'Fecha de pago',
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF95A1AC),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDBE2E7),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Theme.of(context).primaryColor,
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      );
                      var container = Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 24.0, 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //campo de texto nombre de cliente
                                //widget,
                                TextFormField(
                                  controller: _model.nombreDeClienteController,
                                  decoration: InputDecoration(
                                    labelText: 'Nombre de cliente',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: Theme.of(context).primaryColor,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 20.0, 20.0, 20.0),
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                // campo de numero de contacto
                                TextFormField(
                                  controller: _model.numeroDeContactoController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Numero de contacto',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: Theme.of(context).primaryColor,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 20.0, 20.0, 20.0),
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                // campo del domicilio
                                TextFormField(
                                  controller: _model.domicilioController,
                                  decoration: InputDecoration(
                                    labelText: 'Domicilio',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    filled: true,
                                    fillColor: Theme.of(context).primaryColor,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 20.0, 20.0, 20.0),
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                // campo de fecha de pago
                                TextFormField(
                                  controller: _model.fechaDePagoController(),
                                  readOnly: true, //campo solo lectura
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2015),
                                      lastDate: DateTime(2050),
                                    );
                                    if (pickedDate != null) {
                                      _model.fechaDePagoController().text =
                                          pickedDate.toString();
                                    }
                                  },
                                  decoration: inputDecoration,
                                ),
                                SizedBox(height: 16.0),
                                // campo de costo de renta
                                TextFormField(
                                  controller: _model.costoDeRentaController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: 'Costo de renta',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: Theme.of(context).primaryColor,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 20.0, 20.0, 20.0),
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                TextFormField(
                                  controller: _model.giroController,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    labelText: 'Giro',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: Theme.of(context).primaryColor,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 20.0, 20.0, 20.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          // final clientesCreateData = createClientesRecordData;
                          await ClientesRecord.collection.doc().set(_model);
                        },
                        child: container,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Map<String, dynamic>>(
        '_clientenuevoRecord', _clientenuevoRecord));
  }
}

get createClientenuevoRecord {}
