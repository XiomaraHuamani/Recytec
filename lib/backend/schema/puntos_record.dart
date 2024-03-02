import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PuntosRecord extends FirestoreRecord {
  PuntosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "creador" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "puntos_plastico" field.
  double? _puntosPlastico;
  double get puntosPlastico => _puntosPlastico ?? 0.0;
  bool hasPuntosPlastico() => _puntosPlastico != null;

  // "puntos_papel" field.
  double? _puntosPapel;
  double get puntosPapel => _puntosPapel ?? 0.0;
  bool hasPuntosPapel() => _puntosPapel != null;

  // "puntos_vidrio" field.
  double? _puntosVidrio;
  double get puntosVidrio => _puntosVidrio ?? 0.0;
  bool hasPuntosVidrio() => _puntosVidrio != null;

  // "puntos_totales" field.
  double? _puntosTotales;
  double get puntosTotales => _puntosTotales ?? 0.0;
  bool hasPuntosTotales() => _puntosTotales != null;

  void _initializeFields() {
    _creador = snapshotData['creador'] as DocumentReference?;
    _nombre = snapshotData['nombre'] as String?;
    _puntosPlastico = castToType<double>(snapshotData['puntos_plastico']);
    _puntosPapel = castToType<double>(snapshotData['puntos_papel']);
    _puntosVidrio = castToType<double>(snapshotData['puntos_vidrio']);
    _puntosTotales = castToType<double>(snapshotData['puntos_totales']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('puntos');

  static Stream<PuntosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PuntosRecord.fromSnapshot(s));

  static Future<PuntosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PuntosRecord.fromSnapshot(s));

  static PuntosRecord fromSnapshot(DocumentSnapshot snapshot) => PuntosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PuntosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PuntosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PuntosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PuntosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPuntosRecordData({
  DocumentReference? creador,
  String? nombre,
  double? puntosPlastico,
  double? puntosPapel,
  double? puntosVidrio,
  double? puntosTotales,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'creador': creador,
      'nombre': nombre,
      'puntos_plastico': puntosPlastico,
      'puntos_papel': puntosPapel,
      'puntos_vidrio': puntosVidrio,
      'puntos_totales': puntosTotales,
    }.withoutNulls,
  );

  return firestoreData;
}
