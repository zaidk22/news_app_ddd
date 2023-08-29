// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:news_app_bloc/presentation/news/news_page.dart' as _i2;
import 'package:news_app_bloc/presentation/news_details/news_details_page.dart'
    as _i1;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NewsDetailsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.NewsDetailsPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NewsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.NewsDetailsPage]
class NewsDetailsRoute extends _i3.PageRouteInfo<void> {
  const NewsDetailsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          NewsDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsDetailsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NewsPage]
class NewsRoute extends _i3.PageRouteInfo<void> {
  const NewsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
