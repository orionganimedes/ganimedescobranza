import 'dart:async' show Future, Stream;
import '/backend/schema/util/firestore_util.dart'
    show FirestoreRecord, mapFromFirestore, mapToFirestore;
import '/backend/schema/util/schema_util.dart'
    show MapDataExtensions, castToType;
import 'package:ganimedes/backend/schema/index.dart'
    show
        CollectionReference,
        DocumentReference,
        DocumentSnapshot,
        FirebaseFirestore;

class ClientesRecord extends FirestoreRecord {
  ClientesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "domicilio" field.
  String? _domicilio;
  String get domicilio => _domicilio ?? '';
  bool hasDomicilio() => _domicilio != null;

  // "fecha_de_pago" field.
  DateTime? _fechaDePago;
  DateTime? get fechaDePago => _fechaDePago;
  bool hasFechaDePago() => _fechaDePago != null;

  // "giro" field.
  String? _giro;
  String get giro => _giro ?? '';
  bool hasGiro() => _giro != null;

  // "numero_de_predial" field.
  String? _numeroDePredial;
  String get numeroDePredial => _numeroDePredial ?? '';
  bool hasNumeroDePredial() => _numeroDePredial != null;

  // "nombre_de_cliente" field.
  String? _nombreDeCliente;
  String get nombreDeCliente => _nombreDeCliente ?? '';
  bool hasNombreDeCliente() => _nombreDeCliente != null;

  // "costo_de_renta" field.
  double? _costoDeRenta;
  double costoDeRenta() => _costoDeRenta ?? 0.0;
  bool hasCostoDeRenta() => _costoDeRenta != null;

  // "pago_efectuado" field.
  bool? _pagoEfectuado;
  bool get pagoEfectuado => _pagoEfectuado ?? false;
  bool hasPagoEfectuado() => _pagoEfectuado != null;

  // "pago_no_efectuado" field.
  bool? _pagoNoEfectuado;
  bool get pagoNoEfectuado => _pagoNoEfectuado ?? false;
  bool hasPagoNoEfectuado() => _pagoNoEfectuado != null;

  // "numero_de_contacto" field.
  String? _numeroDeContacto;
  String get numeroDeContacto => _numeroDeContacto ?? '';
  bool hasNumeroDeContacto() => _numeroDeContacto != null;

  void _initializeFields() {
    _domicilio = snapshotData['domicilio'] as String?;
    _fechaDePago = snapshotData['fecha_de_pago'] as DateTime?;
    _giro = snapshotData['giro'] as String?;
    _numeroDePredial = snapshotData['numero_de_predial'] as String?;
    _nombreDeCliente = snapshotData['nombre_de_cliente'] as String?;
    _costoDeRenta = castToType<double>(snapshotData['costo_de_renta']);
    _pagoEfectuado = snapshotData['pago_efectuado'] as bool?;
    _pagoNoEfectuado = snapshotData['pago_no_efectuado'] as bool?;
    _numeroDeContacto = snapshotData['numero_de_contacto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientesRecord.fromSnapshot(s));

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientesRecord.fromSnapshot(s));

  static ClientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Future<Map<String, dynamic>> createClientesRecordData({
  Set<dynamic>? set,
  String? numeroDeContacto = '',
  String? domicilio,
  DateTime? fechaDePago,
  String? giro,
  String? numeroDePredial,
  String? nombreDeCliente,
  double? costoDeRenta,
  bool? pagoEfectuado,
  bool? pagoNoEfectuado,
}) async {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'domicilio': domicilio,
      'fecha_de_pago': fechaDePago,
      'giro': giro,
      'numero_de_predial': numeroDePredial,
      'nombre_de_cliente': nombreDeCliente,
      'costo_de_renta': costoDeRenta,
      'pago_efectuado': pagoEfectuado,
      'pago_no_efectuado': pagoNoEfectuado,
      'numero_de_contacto': numeroDeContacto,
    }.withoutNulls(),
  );

  return firestoreData;
}
