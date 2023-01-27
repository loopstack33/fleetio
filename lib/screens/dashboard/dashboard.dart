// ignore_for_file: depend_on_referenced_packages

import 'package:fleetioapp/enums/color_constants.dart';
import 'package:fleetioapp/enums/image_constants.dart';
import 'package:fleetioapp/screens/dashboard/controller/dash_controller.dart';
import 'package:fleetioapp/screens/dashboard/widgets/status_widget.dart';
import 'package:fleetioapp/utils/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../models/vehicle_model.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<DashProvider>().getVehicles(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Image.asset(
            logo,
            height: 30,
          ),
          actions: [
            Container(
                height: 50.0,
                width: 150.0,
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                    color: black.withOpacity(0.4),
                    child: Center(
                        child: Text(
                      'Export to Excel',
                      style: GoogleFonts.montserrat(color: Colors.white),
                    )),
                    onPressed: () async {
                      context.read<DashProvider>().exportDataGridToExcel();
                    })),
          ],
        ),
        body: context.watch<DashProvider>().isLoading
            ? const Align(
                alignment: Alignment.center,
                child: LoadingWidget(),
              )
            : Column(
                children: [
                  const SizedBox(height: 20),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 30.0,
                    runSpacing: 30.0,
                    alignment: WrapAlignment.center,
                    children: [
                      StatusWidget(
                        status: "Active",
                        count: context.read<DashProvider>().active.toString(),
                        color: Colors.green,
                      ),
                      StatusWidget(
                        status: "In Active",
                        count: context.read<DashProvider>().inActive.toString(),
                        color: Colors.blue,
                      ),
                      StatusWidget(
                        status: "In Shop",
                        count: context.read<DashProvider>().inShop.toString(),
                        color: Colors.orange,
                      ),
                      StatusWidget(
                        status: "Out Of Service",
                        count: context
                            .read<DashProvider>()
                            .outOfService
                            .toString(),
                        color: Colors.red,
                      ),
                      StatusWidget(
                        status: "Maintenance Hold",
                        count: context.read<DashProvider>().hold.toString(),
                        color: yellowColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                      child: SfDataGridTheme(
                    data: SfDataGridThemeData(headerColor: mainColor),
                    child: SfDataGrid(
                        footer: Container(
                            color: mainColor,
                            child: const Center(
                                child: Text(
                              'Fleetio  ⓒ 2023',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 16,
                                  color: white),
                            ))),
                        gridLinesVisibility: GridLinesVisibility.both,
                        rowsPerPage: 20,
                        key: context.read<DashProvider>().key,
                        source: context
                            .read<DashProvider>()
                            .vehicleReportDetailData,
                        allowSorting: true,
                        columnWidthMode: ColumnWidthMode.fill,
                        selectionMode: SelectionMode.multiple,
                        navigationMode: GridNavigationMode.cell,
                        columns: context.read<DashProvider>().grid),
                  ))
                ],
              ));
  }
}

class VehicleReportDetailData extends DataGridSource {
  /// Creates the employee data source class with required details.
  VehicleReportDetailData({required List<VehiclesModel> data}) {
    _employeeData = data.map<DataGridRow>((VehiclesModel e) {
      return DataGridRow(cells: <DataGridCell>[
        DataGridCell<String>(
            columnName: 'Vehicle',
            value: e.name.toString() == "null" ? "N/A" : e.name.toString()),
        DataGridCell<String>(
            columnName: 'Make',
            value: e.make.toString() == "null" ? "N/A" : e.make.toString()),
        DataGridCell<String>(
            columnName: 'Model',
            value: e.model.toString() == "null" ? "N/A" : e.model.toString()),
        DataGridCell<String>(
            columnName: 'Type',
            value: e.typeName.toString() == "null"
                ? "N/A"
                : e.typeName.toString()),
        DataGridCell<String>(
            columnName: 'Status',
            value: e.vehicleStatusName.toString() == "null"
                ? "N/A"
                : e.vehicleStatusName.toString()),
        DataGridCell<String>(
            columnName: 'VIN/SN',
            value: e.vin.toString() == "null" ? "N/A" : e.vin.toString()),
        DataGridCell<String>(
            columnName: 'License Plate',
            value: e.licensePlate.toString() == "null"
                ? "N/A"
                : e.licensePlate.toString()),
        DataGridCell<String>(
            columnName: 'TollTags',
            value: e.externalIds.tolltags.toString() == "null"
                ? "N/A"
                : e.externalIds.tolltags.toString()),
      ]);
    }).toList();
  }

  List<DataGridRow> _employeeData = <DataGridRow>[];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((DataGridCell cell) {
      return Container(
        alignment: Alignment.center,
        child: Text(
          cell.value.toString(),
          style: GoogleFonts.montserrat(fontSize: 15),
          textAlign: TextAlign.center,
        ),
      );
    }).toList());
  }
}
