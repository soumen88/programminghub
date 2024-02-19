// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddTaskRoute.name: (routeData) {
      final args = routeData.argsAs<AddTaskRouteArgs>(
          orElse: () => const AddTaskRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddTaskScreen(
          oldTaskModel: args.oldTaskModel,
          isTaskBeingModified: args.isTaskBeingModified,
        ),
      );
    },
    BmiCalculatorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BmiCalculatorScreen(),
      );
    },
    BottomSheetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BottomSheetScreen(),
      );
    },
    CameraImagePreviewRoute.name: (routeData) {
      final args = routeData.argsAs<CameraImagePreviewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CameraImagePreviewScreen(imagePath: args.imagePath),
      );
    },
    CameraRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CameraScreen(),
      );
    },
    DisplayTasksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DisplayTasksScreen(),
      );
    },
    FirstRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FirstPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreen(),
      );
    },
    RouteViewDemonstrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PageViewDemonstrationScreen(),
      );
    },
    SecondRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SecondPage(),
      );
    },
    TimerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TimerScreen(),
      );
    },
    VideoPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPreviewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VideoPreviewScreen(videoPath: args.videoPath),
      );
    },
  };
}

/// generated route for
/// [AddTaskScreen]
class AddTaskRoute extends PageRouteInfo<AddTaskRouteArgs> {
  AddTaskRoute({
    TasksModel? oldTaskModel,
    bool isTaskBeingModified = false,
    List<PageRouteInfo>? children,
  }) : super(
          AddTaskRoute.name,
          args: AddTaskRouteArgs(
            oldTaskModel: oldTaskModel,
            isTaskBeingModified: isTaskBeingModified,
          ),
          initialChildren: children,
        );

  static const String name = 'AddTaskRoute';

  static const PageInfo<AddTaskRouteArgs> page =
      PageInfo<AddTaskRouteArgs>(name);
}

class AddTaskRouteArgs {
  const AddTaskRouteArgs({
    this.oldTaskModel,
    this.isTaskBeingModified = false,
  });

  final TasksModel? oldTaskModel;

  final bool isTaskBeingModified;

  @override
  String toString() {
    return 'AddTaskRouteArgs{oldTaskModel: $oldTaskModel, isTaskBeingModified: $isTaskBeingModified}';
  }
}

/// generated route for
/// [BmiCalculatorScreen]
class BmiCalculatorRoute extends PageRouteInfo<void> {
  const BmiCalculatorRoute({List<PageRouteInfo>? children})
      : super(
          BmiCalculatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BmiCalculatorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomSheetScreen]
class BottomSheetRoute extends PageRouteInfo<void> {
  const BottomSheetRoute({List<PageRouteInfo>? children})
      : super(
          BottomSheetRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomSheetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CameraImagePreviewScreen]
class CameraImagePreviewRoute
    extends PageRouteInfo<CameraImagePreviewRouteArgs> {
  CameraImagePreviewRoute({
    required String imagePath,
    List<PageRouteInfo>? children,
  }) : super(
          CameraImagePreviewRoute.name,
          args: CameraImagePreviewRouteArgs(imagePath: imagePath),
          initialChildren: children,
        );

  static const String name = 'CameraImagePreviewRoute';

  static const PageInfo<CameraImagePreviewRouteArgs> page =
      PageInfo<CameraImagePreviewRouteArgs>(name);
}

class CameraImagePreviewRouteArgs {
  const CameraImagePreviewRouteArgs({required this.imagePath});

  final String imagePath;

  @override
  String toString() {
    return 'CameraImagePreviewRouteArgs{imagePath: $imagePath}';
  }
}

/// generated route for
/// [CameraScreen]
class CameraRoute extends PageRouteInfo<void> {
  const CameraRoute({List<PageRouteInfo>? children})
      : super(
          CameraRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DisplayTasksScreen]
class DisplayTasksRoute extends PageRouteInfo<void> {
  const DisplayTasksRoute({List<PageRouteInfo>? children})
      : super(
          DisplayTasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'DisplayTasksRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FirstPage]
class FirstRoute extends PageRouteInfo<void> {
  const FirstRoute({List<PageRouteInfo>? children})
      : super(
          FirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PageViewDemonstrationScreen]
class RouteViewDemonstrationRoute extends PageRouteInfo<void> {
  const RouteViewDemonstrationRoute({List<PageRouteInfo>? children})
      : super(
          RouteViewDemonstrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RouteViewDemonstrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SecondPage]
class SecondRoute extends PageRouteInfo<void> {
  const SecondRoute({List<PageRouteInfo>? children})
      : super(
          SecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TimerScreen]
class TimerRoute extends PageRouteInfo<void> {
  const TimerRoute({List<PageRouteInfo>? children})
      : super(
          TimerRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VideoPreviewScreen]
class VideoPreviewRoute extends PageRouteInfo<VideoPreviewRouteArgs> {
  VideoPreviewRoute({
    required String videoPath,
    List<PageRouteInfo>? children,
  }) : super(
          VideoPreviewRoute.name,
          args: VideoPreviewRouteArgs(videoPath: videoPath),
          initialChildren: children,
        );

  static const String name = 'VideoPreviewRoute';

  static const PageInfo<VideoPreviewRouteArgs> page =
      PageInfo<VideoPreviewRouteArgs>(name);
}

class VideoPreviewRouteArgs {
  const VideoPreviewRouteArgs({required this.videoPath});

  final String videoPath;

  @override
  String toString() {
    return 'VideoPreviewRouteArgs{videoPath: $videoPath}';
  }
}
