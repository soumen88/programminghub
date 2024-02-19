import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../bmicalc/bmi_calculator_screen.dart';
import '../bottomsheetnavigation/bottom_sheet_screen.dart';
import '../bottomsheetnavigation/first/first_page.dart';
import '../bottomsheetnavigation/second/second_page.dart';
import '../camerademo/camera_image_preview_screen.dart';
import '../camerademo/camera_screen.dart';
import '../camerademo/video_preview_screen.dart';
import '../home/home_screen.dart';
import '../pageviews/page_view_demonstration_screen.dart';
import '../timer/timer_screen.dart';
import '../todo/add_task_screen.dart';
import '../todo/display_tasks_screen.dart';
import '../todo/tasks_model.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      path: "/home",
      initial: true
    ),
    AutoRoute(
        page: TimerRoute.page,
        path: "/timer"
    ),
    AutoRoute(
        page: BmiCalculatorRoute.page,
        path: "/bmi"
    ),
    AutoRoute(
        page: RouteViewDemonstrationRoute.page,
        path: "/pageviews"
    ),
    AutoRoute(
        page: CameraRoute.page,
        path: "/camera"
    ),
    AutoRoute(
        page: CameraImagePreviewRoute.page,
        path: "/imagePreview"
    ),
    AutoRoute(
        page: VideoPreviewRoute.page,
        path: "/videoPreview"
    ),
    AutoRoute(
        page: DisplayTasksRoute.page,
        path: "/displayTask"
    ),
    AutoRoute(
        page: AddTaskRoute.page,
        path: "/addTask"
    ),
    AutoRoute(
        page: BottomSheetRoute.page,
        path: "/bottom",
        children: [
          AutoRoute(
              page: FirstRoute.page,
              path: "first"
          ),
          AutoRoute(
              page: SecondRoute.page,
              path: "second"
          ),
        ]
    ),
  ];
}