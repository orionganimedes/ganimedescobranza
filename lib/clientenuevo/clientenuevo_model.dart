import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
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

class ClientenuevoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nombre_de_cliente widget.
  TextEditingController? nombreDeClienteController;
  String? Function(BuildContext, String?)? nombreDeClienteControllerValidator;
  // State field(s) for numero_de_contacto widget.
  TextEditingController? numeroDeContactoController;
  String? Function(BuildContext, String?)? numeroDeContactoControllerValidator;
  // State field(s) for direccion widget.
  TextEditingController? direccionController;
  late bool direccionVisibility;
  String? Function(BuildContext, String?)? direccionControllerValidator;
  // State field(s) for costo_de_renta widget.
  TextEditingController? costoDeRentaController;
  late bool costoDeRentaVisibility;
  String? Function(BuildContext, String?)? costoDeRentaControllerValidator;
  // State field(s) for giro widget.
  TextEditingController? giroController;
  late bool giroVisibility;
  String? Function(BuildContext, String?)? giroControllerValidator;
  // State field(s) for numero_de_predial widget.
  TextEditingController? numeroDePredialController;
  late bool numeroDePredialVisibility;
  String? Function(BuildContext, String?)? numeroDePredialControllerValidator;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    direccionVisibility = false;
    costoDeRentaVisibility = false;
    giroVisibility = false;
    numeroDePredialVisibility = false;
  }

  void dispose() {
    nombreDeClienteController?.dispose();
    numeroDeContactoController?.dispose();
    direccionController?.dispose();
    costoDeRentaController?.dispose();
    giroController?.dispose();
    numeroDePredialController?.dispose();
  }

  /// Additional helper methods are added here.

}
