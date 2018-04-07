import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
// import 'package:dart_fullstack/components/home/home_component.dart';
// import 'package:dart_fullstack/components/student/student_component.dart';
import 'package:dart_fullstack/components/navbar/navbar_component.dart';
import 'package:ng_bootstrap/ng_bootstrap.dart';
import 'package:dart_fullstack/app_routing.dart';

@Component(
  selector: 'app-component',
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES, BS_DIRECTIVES, NavbarComponent],
)
@RouteConfig(routes)

class AppComponent {
  var name = 'Angular';
}

