import 'package:archive_app/yandexMap/map_widget.dart';
import 'package:flutter/material.dart';

class InOfficeMap extends StatelessWidget {
  const InOfficeMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const MapWidget(),
    );
  }
}