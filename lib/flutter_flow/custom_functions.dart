import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double subtotalItem(
  int qty,
  double precio,
) {
  return qty * precio;
}

String? sumaPuntos() {
  // sumaPuntos sumara los datos de las 3 variables
  int plastico = 0;
  int papel = 0;
  int vidrio = 0;
  int total = plastico + papel + vidrio;
  return total.toString();
}
