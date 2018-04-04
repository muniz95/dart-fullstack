import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:dart_fullstack/app_component.dart';

void main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
    // Remove next line in production
    provide(LocationStrategy, useClass: HashLocationStrategy),
    // provide(Client, useClass: InMemoryDataService),
    // Using a real back end?
    // Import browser_client.dart and change the above to:
    // [provide(Client, useFactory: () => new BrowserClient(), deps: [])]
  ]);
}

// void main() {
//   bootstrap(AppComponent);
// }
