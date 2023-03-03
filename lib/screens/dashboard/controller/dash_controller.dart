// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'dart:convert';
import 'dart:io';
import 'package:fleetioapp/screens/dashboard/dashboard.dart';
import 'package:fleetioapp/service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' as xlsio;
import '../../../models/vehicle_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:fleetioapp/enums/color_constants.dart';
import 'package:syncfusion_flutter_datagrid_export/export.dart';
import '../../../utils/save_file_mobile_desktop.dart';
import 'package:google_fonts/google_fonts.dart';

class DashProvider extends ChangeNotifier {
  ApiService apiService = ApiService();
  final GlobalKey<SfDataGridState> key = GlobalKey<SfDataGridState>();
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String _active = "0";
  String _inActive = "0";
  String _inShop = "0";
  String _outOfService = "0";
  String _hold = "0";

  String get active => _active;
  String get inActive => _inActive;
  String get inShop => _inShop;
  String get outOfService => _outOfService;
  String get hold => _hold;

  List<VehiclesModel> _vehicles = [];
  List<VehiclesModel> get vehicles => _vehicles;

  List<GridColumn> grid = [
    GridColumn(
        columnName: 'Vehicle',
        label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child:  Text(
              'Vehicle',
              style: GoogleFonts.montserrat(color: white),
              overflow: TextOverflow.ellipsis,
            ))),
    GridColumn(
        columnName: 'Make',
        label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child:  Text(
              'Make',
              style: GoogleFonts.montserrat(color: white),
              overflow: TextOverflow.ellipsis,
            ))),
    GridColumn(
        columnName: 'Model',
        label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child:  Text(
              'Model',
              style: GoogleFonts.montserrat(color: white),
              overflow: TextOverflow.ellipsis,
            ))),
    GridColumn(
        columnName: 'Type',
        label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child:  Text(
              'Type',
              style: GoogleFonts.montserrat(color: white),
              overflow: TextOverflow.ellipsis,
            ))),
    GridColumn(
        columnName: 'Status',
        label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child:  Text(
              'Status',
              style: GoogleFonts.montserrat(color: white),
              overflow: TextOverflow.ellipsis,
            ))),
    GridColumn(
        columnName: 'VIN/SN',
        label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child:  Text(
              'VIN/SN',
              style: GoogleFonts.montserrat(color: white),
              overflow: TextOverflow.ellipsis,
            ))),
    GridColumn(
        columnName: 'License Plate',
        label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child:  Text(
              'License Plate',
              style: GoogleFonts.montserrat(color: white),
              overflow: TextOverflow.ellipsis,
            ))),
    GridColumn(
        columnName: 'TollTags',
        label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child:  Text(
              'TollTags',
              style: GoogleFonts.montserrat(color: white),
              overflow: TextOverflow.ellipsis,
            ))),
  ];

  late VehicleReportDetailData vehicleReportDetailData;

  Future<void> getVehicles(BuildContext context) async {
    _isLoading = true;
    notifyListeners();
    apiService.getAllVehicles().then((response) {
      List<dynamic> data = json.decode(response.body);
      if (response.statusCode == 200 && data.toString() != "[]") {
        _vehicles = data.map((data) => VehiclesModel.fromJson(data)).toList();
        _active = _vehicles
            .where((element) => element.vehicleStatusName == "Active")
            .length
            .toString();
        _inActive = _vehicles
            .where((element) => element.vehicleStatusName == "Inactive")
            .length
            .toString();
        _inShop = _vehicles
            .where((element) => element.vehicleStatusName == "In Shop")
            .length
            .toString();
        _outOfService = _vehicles
            .where((element) => element.vehicleStatusName == "Out of Service")
            .length
            .toString();
        _hold = _vehicles
            .where((element) => element.vehicleStatusName == "Maintenance Hold")
            .length
            .toString();
        vehicleReportDetailData = VehicleReportDetailData(data: _vehicles);
        _isLoading = false;
        notifyListeners();
      } else if (response.statusCode == 200 && data.toString() == "[]") {
        _isLoading = false;
        notifyListeners();
      } else {
        _isLoading = false;
        notifyListeners();
      }
    });
  }

  Future<void> exportDataGridToExcel() async {
    final xlsio.Workbook workbook = key.currentState!.exportToExcelWorkbook();
    final List<int> bytes = workbook.saveAsStream();
    File('VehicleReport.xlsx').writeAsBytes(bytes);
    await saveAndLaunchFile(bytes, 'VehicleReport.xlsx');
    workbook.dispose();
  }
}
