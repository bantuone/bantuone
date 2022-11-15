
import 'package:bantuone/features/order/viewmodel/order_viewmodel.dart';

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [

  ChangeNotifierProvider(create: (_) => OrderViewModel()),
];