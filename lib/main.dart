import 'package:flutter/material.dart';
import 'package:sofka_flutter_module/views/my_app.dart';

// Este decorador indica al compilador de Flutter que esta función debe usarse como
// punto de entrada para la aplicación.
@pragma('vm:entry-point')
void flutterEntryPoint() => runApp(const MyApp());

void main() => runApp(const MyApp());
