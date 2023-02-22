import 'package:flutter/cupertino.dart';
import 'package:get_router_poc/frameChild.dart';
import 'package:get_router_poc/home_page.dart';
import 'package:get_router_poc/page_one.dart';
import 'package:get_router_poc/page_two.dart';
import 'package:go_router/go_router.dart';

import 'frame_page.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/pageOne/:params',
      builder: (context, state) => PageOne(pathParams: state.params['params'] ?? 'fogging'),
    ),
    GoRoute(
      path: '/pageTwo',
      builder: (context, state) => PageTwo(
        queryParams: state.queryParams['id'] ?? 'null',
        prodCat: state.queryParams['prod'] ?? 'Prod',
      ),
    ),
    ShellRoute(
      builder: (context, state, shellChild) => FramePage(child: shellChild),
      routes: [
        GoRoute(
          path: '/bagChild',
          builder: (context, state) => const BagChild(),
        ),
        GoRoute(
          path: '/clothChild',
          builder: (context, state) => const ClothChild(),
        ),
        GoRoute(
          path: '/jewelChild',
          builder: (context, state) => const JewelleryChild(),
        ),
      ],
    )
  ],
);

int calculateSelectedIndex(BuildContext context) {
  String location = GoRouterState.of(context).location;
  if (location.startsWith('/bagChild')) {
    return 0;
  }
  if (location.startsWith('/clothChild')) {
    return 1;
  }
  if (location.startsWith('/jewelChild')) {
    return 2;
  }
  return 0;
}
