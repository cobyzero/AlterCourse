import 'package:alter_course/infraestructure/presentation/screens/home_view.dart';
import 'package:alter_course/infraestructure/presentation/screens/login_view.dart';
import 'package:go_router/go_router.dart';

GoRouter goRouter = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const LoginView(),
  ),
  GoRoute(
    path: "/home",
    builder: (context, state) => const HomeView(),
  )
]);
