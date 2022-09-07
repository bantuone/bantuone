import 'package:bantuone/features/login/viewmodel/login_viewmodel.dart';
import 'package:bantuone/features/order/viewmodel/order_viewmodel.dart';
import 'package:bantuone/features/register/viewmodel/register_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => LoginViewModel()),
  ChangeNotifierProvider(create: (_) => RegisterViewModel()),
  ChangeNotifierProvider(create: (_) => OrderViewModel()),
];