import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:lestari_laundry/api/base/base_config/base_config.dart';
import 'package:lestari_laundry/api/domain/model/request/login/login_request.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/order_data.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/kilogram_screen/cubit/kilogram_cubit.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/detail_penerima.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/layanan_data.dart';
import 'package:lestari_laundry/api/presentation/pages/home/kilogram/model_data_order/total_data.dart';
import 'package:lestari_laundry/api/presentation/pages/login/cubit/login_cubit.dart';
import 'package:lestari_laundry/api/presentation/pages/profile/cubit/profile_cubit.dart';
import 'package:lestari_laundry/src/utilities/utilities.dart';
import 'package:lestari_laundry/src/widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../api/presentation/navigation/routes.dart';
import '../blocs/blocs.dart';
import 'package:art_sweetalert/art_sweetalert.dart';
import '../controller/controllers.dart';
import '../models/models.dart';
import '../services/services.dart';

part '../../api/presentation/pages/onboard/onboard_screen.dart';
part '../../api/presentation/pages/login/login_screen.dart';
part '../../api/presentation/pages/onboard/intro_screen.dart';
part '../../api/presentation/pages/onboard/page_1.dart';
part '../../api/presentation/pages/onboard/page_2.dart';
part '../../api/presentation/pages/onboard/page_3.dart';
part '../../api/presentation/pages/home/views/dashboard_view.dart';
part 'forgot_password.dart';
part 'splash/splash_screen.dart';
part 'splash/splash_login.dart';
part 'splash/splash_register.dart';
part 'splash/splash_intro.dart';
part '../../api/presentation/pages/home/location_screen.dart';
part '../../api/presentation/pages/home/home_screen.dart';
part '../../api/presentation/pages/home/views/user_view.dart';
part '../../api/presentation/pages/home/kilogram/kilogram_screen/kilogram_screen.dart';
part '../../api/presentation/pages/home/kilogram/detail_order_kilogram_screen/detail_order_kilogram.dart';
part '../../api/presentation/pages/home/kilogram/detail_register_kilogram.dart';
part '../../api/presentation/pages/home/satuan/satuan_screen.dart';
part '../../api/presentation/pages/home/views/activity_screen.dart';
part '../../api/presentation/pages/home/views/order_screen.dart';
part 'register_screen.dart';
part 'register_email.dart';
part 'register_name.dart';
part '../../api/presentation/pages/home/satuan/detail_register_satuan.dart';
part '../../api/presentation/pages/home/satuan/satuan_service.dart';
part '../../api/presentation/pages/home/satuan/detail_order_satuan.dart';
part '../../api/presentation/pages/home/kilogram/kg_summary_screen.dart/kg_sumary.dart';
part '../../api/presentation/pages/home/kilogram/kg_payment.dart';
part '../../api/presentation/pages/home/kilogram/order_detail_kg.dart';
part '../../api/presentation/pages/home/kilogram/cod_kg.dart';
part 'detail_order.dart';
part '../../api/presentation/pages/home/kilogram/kilogram_pickup.dart';
