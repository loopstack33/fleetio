
import 'package:provider/provider.dart';
import '../screens/dashboard/controller/dash_controller.dart';

/* ---------- THIS FILE ALL THE PROVIDERS (CONTROLLER'S ACCESS)---------- */
/* -------- 26-Jan-2023 -------- */

var multiProvider = [

  /// DashProvider ///
  ChangeNotifierProvider<DashProvider>(
    create: (_) => DashProvider(),
    lazy: true,
  ),

];
