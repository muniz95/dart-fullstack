import 'package:angular_router/angular_router.dart';
import 'package:dart_fullstack/components/home/home_component.dart';
import 'package:dart_fullstack/components/student/student_component.dart';

const routes = const [
  const Route(
    path: '/',
    name: 'Home',
    component: HomeComponent,
    useAsDefault: true
  ),
  const Route(
    path: '/student',
    name: 'Student',
    component: StudentComponent
  )
];