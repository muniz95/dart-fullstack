import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:dart_fullstack/src/home/home_component.dart';
import 'package:dart_fullstack/src/student/student_component.dart';
import 'package:ng_bootstrap/ng_bootstrap.dart';

@Component(
  selector: 'app-component',
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES, BS_DIRECTIVES],
)
@RouteConfig(
  const [
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
  ]
)
class AppComponent {
  var name = 'Angular';
}

